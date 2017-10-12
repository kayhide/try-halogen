module Data.URI where

import Prelude

foreign import encodeURIComponent :: String -> String

foreign import data Undefined :: Type -> Type

foreign import head :: forall a. Array a -> Undefined a

foreign import isUndefined :: forall a. Undefined a -> Boolean

isEmpty :: forall a. Array a -> Boolean
isEmpty = isUndefined <<< head
