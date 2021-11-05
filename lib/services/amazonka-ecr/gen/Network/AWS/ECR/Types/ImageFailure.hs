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
-- Module      : Amazonka.ECR.Types.ImageFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECR.Types.ImageFailure where

import qualified Amazonka.Core as Core
import Amazonka.ECR.Types.ImageFailureCode
import Amazonka.ECR.Types.ImageIdentifier
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object representing an Amazon ECR image failure.
--
-- /See:/ 'newImageFailure' smart constructor.
data ImageFailure = ImageFailure'
  { -- | The reason for the failure.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The code associated with the failure.
    failureCode :: Prelude.Maybe ImageFailureCode,
    -- | The image ID associated with the failure.
    imageId :: Prelude.Maybe ImageIdentifier
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImageFailure' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failureReason', 'imageFailure_failureReason' - The reason for the failure.
--
-- 'failureCode', 'imageFailure_failureCode' - The code associated with the failure.
--
-- 'imageId', 'imageFailure_imageId' - The image ID associated with the failure.
newImageFailure ::
  ImageFailure
newImageFailure =
  ImageFailure'
    { failureReason = Prelude.Nothing,
      failureCode = Prelude.Nothing,
      imageId = Prelude.Nothing
    }

-- | The reason for the failure.
imageFailure_failureReason :: Lens.Lens' ImageFailure (Prelude.Maybe Prelude.Text)
imageFailure_failureReason = Lens.lens (\ImageFailure' {failureReason} -> failureReason) (\s@ImageFailure' {} a -> s {failureReason = a} :: ImageFailure)

-- | The code associated with the failure.
imageFailure_failureCode :: Lens.Lens' ImageFailure (Prelude.Maybe ImageFailureCode)
imageFailure_failureCode = Lens.lens (\ImageFailure' {failureCode} -> failureCode) (\s@ImageFailure' {} a -> s {failureCode = a} :: ImageFailure)

-- | The image ID associated with the failure.
imageFailure_imageId :: Lens.Lens' ImageFailure (Prelude.Maybe ImageIdentifier)
imageFailure_imageId = Lens.lens (\ImageFailure' {imageId} -> imageId) (\s@ImageFailure' {} a -> s {imageId = a} :: ImageFailure)

instance Core.FromJSON ImageFailure where
  parseJSON =
    Core.withObject
      "ImageFailure"
      ( \x ->
          ImageFailure'
            Prelude.<$> (x Core..:? "failureReason")
            Prelude.<*> (x Core..:? "failureCode")
            Prelude.<*> (x Core..:? "imageId")
      )

instance Prelude.Hashable ImageFailure

instance Prelude.NFData ImageFailure
