{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.APIGateway.Types.DocumentationPart
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.APIGateway.Types.DocumentationPart where

import Amazonka.APIGateway.Types.DocumentationPartLocation
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A documentation part for a targeted API entity.
--
-- A documentation part consists of a content map (@properties@) and a
-- target (@location@). The target specifies an API entity to which the
-- documentation content applies. The supported API entity types are @API@,
-- @AUTHORIZER@, @MODEL@, @RESOURCE@, @METHOD@, @PATH_PARAMETER@,
-- @QUERY_PARAMETER@, @REQUEST_HEADER@, @REQUEST_BODY@, @RESPONSE@,
-- @RESPONSE_HEADER@, and @RESPONSE_BODY@. Valid @location@ fields depend
-- on the API entity type. All valid fields are not required.
--
-- The content map is a JSON string of API-specific key-value pairs.
-- Although an API can use any shape for the content map, only the
-- OpenAPI-compliant documentation fields will be injected into the
-- associated API entity definition in the exported OpenAPI definition
-- file.
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html Documenting an API>,
-- DocumentationParts
--
-- /See:/ 'newDocumentationPart' smart constructor.
data DocumentationPart = DocumentationPart'
  { -- | The location of the API entity to which the documentation applies. Valid
    -- fields depend on the targeted API entity type. All the valid location
    -- fields are not required. If not explicitly specified, a valid location
    -- field is treated as a wildcard and associated documentation content may
    -- be inherited by matching entities, unless overridden.
    location :: Prelude.Maybe DocumentationPartLocation,
    -- | The DocumentationPart identifier, generated by API Gateway when the
    -- @DocumentationPart@ is created.
    id :: Prelude.Maybe Prelude.Text,
    -- | A content map of API-specific key-value pairs describing the targeted
    -- API entity. The map must be encoded as a JSON string, e.g.,
    -- @\"{ \\\"description\\\": \\\"The API does ...\\\" }\"@. Only
    -- OpenAPI-compliant documentation-related fields from the properties map
    -- are exported and, hence, published as part of the API entity
    -- definitions, while the original documentation parts are exported in a
    -- OpenAPI extension of @x-amazon-apigateway-documentation@.
    properties :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentationPart' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'location', 'documentationPart_location' - The location of the API entity to which the documentation applies. Valid
-- fields depend on the targeted API entity type. All the valid location
-- fields are not required. If not explicitly specified, a valid location
-- field is treated as a wildcard and associated documentation content may
-- be inherited by matching entities, unless overridden.
--
-- 'id', 'documentationPart_id' - The DocumentationPart identifier, generated by API Gateway when the
-- @DocumentationPart@ is created.
--
-- 'properties', 'documentationPart_properties' - A content map of API-specific key-value pairs describing the targeted
-- API entity. The map must be encoded as a JSON string, e.g.,
-- @\"{ \\\"description\\\": \\\"The API does ...\\\" }\"@. Only
-- OpenAPI-compliant documentation-related fields from the properties map
-- are exported and, hence, published as part of the API entity
-- definitions, while the original documentation parts are exported in a
-- OpenAPI extension of @x-amazon-apigateway-documentation@.
newDocumentationPart ::
  DocumentationPart
newDocumentationPart =
  DocumentationPart'
    { location = Prelude.Nothing,
      id = Prelude.Nothing,
      properties = Prelude.Nothing
    }

-- | The location of the API entity to which the documentation applies. Valid
-- fields depend on the targeted API entity type. All the valid location
-- fields are not required. If not explicitly specified, a valid location
-- field is treated as a wildcard and associated documentation content may
-- be inherited by matching entities, unless overridden.
documentationPart_location :: Lens.Lens' DocumentationPart (Prelude.Maybe DocumentationPartLocation)
documentationPart_location = Lens.lens (\DocumentationPart' {location} -> location) (\s@DocumentationPart' {} a -> s {location = a} :: DocumentationPart)

-- | The DocumentationPart identifier, generated by API Gateway when the
-- @DocumentationPart@ is created.
documentationPart_id :: Lens.Lens' DocumentationPart (Prelude.Maybe Prelude.Text)
documentationPart_id = Lens.lens (\DocumentationPart' {id} -> id) (\s@DocumentationPart' {} a -> s {id = a} :: DocumentationPart)

-- | A content map of API-specific key-value pairs describing the targeted
-- API entity. The map must be encoded as a JSON string, e.g.,
-- @\"{ \\\"description\\\": \\\"The API does ...\\\" }\"@. Only
-- OpenAPI-compliant documentation-related fields from the properties map
-- are exported and, hence, published as part of the API entity
-- definitions, while the original documentation parts are exported in a
-- OpenAPI extension of @x-amazon-apigateway-documentation@.
documentationPart_properties :: Lens.Lens' DocumentationPart (Prelude.Maybe Prelude.Text)
documentationPart_properties = Lens.lens (\DocumentationPart' {properties} -> properties) (\s@DocumentationPart' {} a -> s {properties = a} :: DocumentationPart)

instance Core.FromJSON DocumentationPart where
  parseJSON =
    Core.withObject
      "DocumentationPart"
      ( \x ->
          DocumentationPart'
            Prelude.<$> (x Core..:? "location")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "properties")
      )

instance Prelude.Hashable DocumentationPart

instance Prelude.NFData DocumentationPart
