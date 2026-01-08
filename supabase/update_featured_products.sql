-- Update Featured Products: Only Tirzepatide, Glutathione, and Retatrutide
-- Run this SQL in your Supabase SQL Editor

-- First, set all products to NOT featured
UPDATE public.products SET featured = false;

-- Now set only Tirzepatide, Glutathione, and Retatrutide as featured
UPDATE public.products 
SET featured = true 
WHERE name IN ('Tirzepatide', 'Glutathione 1500mg', 'Retatrutide');

-- Verify featured products
SELECT name, featured FROM public.products ORDER BY featured DESC, name;
