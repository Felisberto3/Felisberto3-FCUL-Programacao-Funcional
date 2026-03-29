fromTo :: Int -> Int -> [a] -> [a]
fromTo i j w = [w !! ind | ind <- [i .. j]]

tail' v = fromTo 1 (length v - 1) v

init' v = fromTo 0 (length v - 2) v

l i = fromTo i i