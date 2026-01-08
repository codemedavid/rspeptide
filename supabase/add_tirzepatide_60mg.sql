-- Add Tirzepatide 60mg variation
-- Run this SQL in your Supabase SQL Editor

INSERT INTO public.product_variations (product_id, name, quantity_mg, price, stock_quantity)
VALUES (
  'd0a80121-7ac0-4e78-94f8-585d77059301',  -- Tirzepatide product ID
  '60mg',
  60,
  7500.00,  -- Adjust price as needed
  50
);

-- Verify it was added
SELECT p.name, pv.name as variation, pv.price
FROM public.products p
JOIN public.product_variations pv ON p.id = pv.product_id
WHERE p.id = 'd0a80121-7ac0-4e78-94f8-585d77059301'
ORDER BY pv.quantity_mg;
