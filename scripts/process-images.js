import fs from 'fs';
import path from 'path';
import { execSync } from 'child_process';
import smartcrop from 'smartcrop-sharp';
import sharp from 'sharp';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const rawDir = path.join(__dirname, '../src/assets/raw');
const outDir = path.join(__dirname, '../public/optimized');

// Ensure directories exist
if (!fs.existsSync(rawDir)) fs.mkdirSync(rawDir, { recursive: true });
if (!fs.existsSync(outDir)) fs.mkdirSync(outDir, { recursive: true });

// Define layout dimensions
const targets = {
  top: { width: 684, height: 501 },
  bottom: { width: 327, height: 300 }
};

async function processImage(inputPath, outputPath, targetSize) {
  console.log(`Processing: ${path.basename(inputPath)} -> ${targetSize.width}x${targetSize.height}`);
  
  // 1. Upscayl Step (if binary available)
  let upscaledPath = inputPath;
  try {
    const tmpUpscaled = inputPath.replace(/(\.[\w\d_-]+)$/i, '_upscaled$1');
    // Using npx upscayl-bin or upscayl globally if installed. 
    // This is optional if not installed, will skip if error.
    console.log(`[Upscayl] Attempting to upscale ${inputPath}...`);
    execSync(`npx upscayl -i "${inputPath}" -o "${tmpUpscaled}"`, { stdio: 'ignore' });
    if (fs.existsSync(tmpUpscaled)) {
      upscaledPath = tmpUpscaled;
      console.log(`[Upscayl] Success!`);
    }
  } catch (err) {
    console.log(`[Upscayl] Skipped (upscayl binary not found or failed). Using original image.`);
  }

  // 2. Smartcrop Step
  try {
    const result = await smartcrop.crop(upscaledPath, { width: targetSize.width, height: targetSize.height });
    const crop = result.topCrop;
    await sharp(upscaledPath)
      .extract({ width: crop.width, height: crop.height, left: crop.x, top: crop.y })
      .resize(targetSize.width, targetSize.height)
      .toFile(outputPath);
      
    console.log(`[Smartcrop] Success: ${outputPath}`);
  } catch (err) {
    console.error(`[Smartcrop] Error processing ${inputPath}:`, err);
  }
}

async function run() {
  const files = fs.readdirSync(rawDir);
  console.log(`Found ${files.length} items in ${rawDir}`);

  for (const file of files) {
    const ext = path.extname(file).toLowerCase();
    if (!['.jpg', '.jpeg', '.png', '.webp'].includes(ext)) continue;
    
    // Naming convention: {slug}-top.jpg, {slug}-bottom.jpg
    const inputPath = path.join(rawDir, file);
    const outputPath = path.join(outDir, file);
    
    let target = targets.top; // Default
    if (file.includes('-bottom')) {
      target = targets.bottom;
    } else if (file.includes('-top')) {
      target = targets.top;
    }

    await processImage(inputPath, outputPath, target);
  }
  console.log('Done image processing pipeline.');
}

run();
