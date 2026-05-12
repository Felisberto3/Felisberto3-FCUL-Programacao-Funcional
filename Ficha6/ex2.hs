data Map k v = M [(k, v)] deriving (Show)

empty :: Map k v
empty = M []

singleton :: k -> v -> Map k v
singleton k v = M [(k, v)]

null' :: Map k v -> Bool
null' (M list) = null list

-- instance (Show k, Show v) => Show (Map k v) where
--   show (M [(k, v)]) = "[( " ++ show k ++ "," ++ show v ++ " )]"
--   show (M []) = "[]"

size :: Map k v -> Int
size (M list) = length list

member :: (Ord k) => k -> Map k v -> Bool
member k (M list) = any (\(key, _) -> key == k) list

lookup' :: (Ord k) => k -> Map k v -> Maybe v
lookup' k (M []) = Nothing
lookup' k (M ((key, v) : xs))
  | k == key = Just v
  | otherwise = lookup' k (M xs)

insert :: (Ord k) => k -> v -> Map k v -> Map k v
insert k v (M []) = M [(k, v)]
insert k v (M ((k', v') : xs))
  | k < k' = M ((k, v) : (k', v') : xs)
  | k == k' = M ((k', v) : xs)
  | otherwise = M ((k', v') : resto)
  where
    M resto = insert k v (M xs)

delete :: (Ord k) => k -> Map k v -> Map k v
delete k (M []) = M []
delete k (M ((k', v') : xs))
  | k == k' = M xs
  | k < k' = M xs
  | otherwise = M ((k', v') : resto)
  where
    M resto = delete k (M xs)

unionWith :: (Ord k) => (v -> v -> v) -> Map k v -> Map k v -> Map k v
unionWith _ (M []) list = list
unionWith f (M (x : xs)) list = unionWith f (M xs) (insertInList f x list)

insertInList :: (Ord a) => (v -> v -> v) -> (a, v) -> Map a v -> Map a v
insertInList _ (key, value) (M []) = M [(key, value)]
insertInList f (key, value) (M ((k, v) : xs))
  | key == k = M ((key, f value v) : xs)
  | key < k = M ((key, value) : (k, v) : xs)
  | otherwise = M ((k, v) : resto)
  where
    M resto = insertInList f (key, value) (M xs)

fromList :: (Ord k) => [(k, v)] -> Map k v
fromList = M

toList :: Map k v -> [(k, v)]
toList (M list) = list