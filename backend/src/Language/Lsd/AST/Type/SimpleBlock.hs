module Language.Lsd.AST.Type.SimpleBlock
    ( SimpleBlockType (..)
    )
where

import Language.Lsd.AST.SimpleRegex (Disjunction)
import Language.Lsd.AST.Type (NamedType)
import Language.Lsd.AST.Type.SimpleParagraph (SimpleParagraphType)
import Language.Lsd.AST.Type.Table (TableType)

-- | A simple block type is basically a union of types.
data SimpleBlockType
    = SimpleBlockType
        (NamedType SimpleParagraphType)
        (Disjunction (NamedType TableType))
