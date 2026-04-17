module Geometry (sphereArea) where

-- cubeArea::
sphereArea :: (Fractional a) => a -> a
sphereArea r = 4 * (pi * r ^ 2)
  where
    pi = 3.1415