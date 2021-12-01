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
-- Module      : Amazonka.Translate.Types.TerminologyDataLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Translate.Types.TerminologyDataLocation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The location of the custom terminology data.
--
-- /See:/ 'newTerminologyDataLocation' smart constructor.
data TerminologyDataLocation = TerminologyDataLocation'
  { -- | The repository type for the custom terminology data.
    repositoryType :: Prelude.Text,
    -- | The location of the custom terminology data.
    location :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TerminologyDataLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repositoryType', 'terminologyDataLocation_repositoryType' - The repository type for the custom terminology data.
--
-- 'location', 'terminologyDataLocation_location' - The location of the custom terminology data.
newTerminologyDataLocation ::
  -- | 'repositoryType'
  Prelude.Text ->
  -- | 'location'
  Prelude.Text ->
  TerminologyDataLocation
newTerminologyDataLocation
  pRepositoryType_
  pLocation_ =
    TerminologyDataLocation'
      { repositoryType =
          pRepositoryType_,
        location = pLocation_
      }

-- | The repository type for the custom terminology data.
terminologyDataLocation_repositoryType :: Lens.Lens' TerminologyDataLocation Prelude.Text
terminologyDataLocation_repositoryType = Lens.lens (\TerminologyDataLocation' {repositoryType} -> repositoryType) (\s@TerminologyDataLocation' {} a -> s {repositoryType = a} :: TerminologyDataLocation)

-- | The location of the custom terminology data.
terminologyDataLocation_location :: Lens.Lens' TerminologyDataLocation Prelude.Text
terminologyDataLocation_location = Lens.lens (\TerminologyDataLocation' {location} -> location) (\s@TerminologyDataLocation' {} a -> s {location = a} :: TerminologyDataLocation)

instance Core.FromJSON TerminologyDataLocation where
  parseJSON =
    Core.withObject
      "TerminologyDataLocation"
      ( \x ->
          TerminologyDataLocation'
            Prelude.<$> (x Core..: "RepositoryType")
            Prelude.<*> (x Core..: "Location")
      )

instance Prelude.Hashable TerminologyDataLocation where
  hashWithSalt salt' TerminologyDataLocation' {..} =
    salt' `Prelude.hashWithSalt` location
      `Prelude.hashWithSalt` repositoryType

instance Prelude.NFData TerminologyDataLocation where
  rnf TerminologyDataLocation' {..} =
    Prelude.rnf repositoryType
      `Prelude.seq` Prelude.rnf location
