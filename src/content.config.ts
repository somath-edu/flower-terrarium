import { z, defineCollection } from 'astro:content';
import { glob } from 'astro/loaders';

const blogCollection = defineCollection({
  loader: glob({ pattern: "**/*.{md,mdx}", base: "./src/content/blog" }),
  schema: z.object({
    title: z.string(),
    titleEn: z.string().optional(),
    date: z.coerce.date(),
    category: z.string(),
    categoryEn: z.string().optional(),
    coverImage: z.string(), // top image path
    subImage: z.string(), // bottom image path
    subtitle: z.string().optional(),
    subtitleEn: z.string().optional(),
    description: z.string(),
    descriptionEn: z.string().optional(),
  }),
});

export const collections = {
  'blog': blogCollection,
};
