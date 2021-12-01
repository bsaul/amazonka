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
-- Module      : Amazonka.CostExplorer.Types.RDSInstanceDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CostExplorer.Types.RDSInstanceDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details about the Amazon RDS instances that Amazon Web Services
-- recommends that you purchase.
--
-- /See:/ 'newRDSInstanceDetails' smart constructor.
data RDSInstanceDetails = RDSInstanceDetails'
  { -- | Determines whether the recommendation is for a current-generation
    -- instance.
    currentGeneration :: Prelude.Maybe Prelude.Bool,
    -- | Determines whether the recommendation is for a reservation in a single
    -- Availability Zone or a reservation with a backup in a second
    -- Availability Zone.
    deploymentOption :: Prelude.Maybe Prelude.Text,
    -- | The instance family of the recommended reservation.
    family :: Prelude.Maybe Prelude.Text,
    -- | The type of instance that Amazon Web Services recommends.
    instanceType :: Prelude.Maybe Prelude.Text,
    -- | The license model that the recommended reservation supports.
    licenseModel :: Prelude.Maybe Prelude.Text,
    -- | Determines whether the recommended reservation is size flexible.
    sizeFlexEligible :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Web Services Region of the recommended reservation.
    region :: Prelude.Maybe Prelude.Text,
    -- | The database engine that the recommended reservation supports.
    databaseEngine :: Prelude.Maybe Prelude.Text,
    -- | The database edition that the recommended reservation supports.
    databaseEdition :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RDSInstanceDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'currentGeneration', 'rDSInstanceDetails_currentGeneration' - Determines whether the recommendation is for a current-generation
-- instance.
--
-- 'deploymentOption', 'rDSInstanceDetails_deploymentOption' - Determines whether the recommendation is for a reservation in a single
-- Availability Zone or a reservation with a backup in a second
-- Availability Zone.
--
-- 'family', 'rDSInstanceDetails_family' - The instance family of the recommended reservation.
--
-- 'instanceType', 'rDSInstanceDetails_instanceType' - The type of instance that Amazon Web Services recommends.
--
-- 'licenseModel', 'rDSInstanceDetails_licenseModel' - The license model that the recommended reservation supports.
--
-- 'sizeFlexEligible', 'rDSInstanceDetails_sizeFlexEligible' - Determines whether the recommended reservation is size flexible.
--
-- 'region', 'rDSInstanceDetails_region' - The Amazon Web Services Region of the recommended reservation.
--
-- 'databaseEngine', 'rDSInstanceDetails_databaseEngine' - The database engine that the recommended reservation supports.
--
-- 'databaseEdition', 'rDSInstanceDetails_databaseEdition' - The database edition that the recommended reservation supports.
newRDSInstanceDetails ::
  RDSInstanceDetails
newRDSInstanceDetails =
  RDSInstanceDetails'
    { currentGeneration =
        Prelude.Nothing,
      deploymentOption = Prelude.Nothing,
      family = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      licenseModel = Prelude.Nothing,
      sizeFlexEligible = Prelude.Nothing,
      region = Prelude.Nothing,
      databaseEngine = Prelude.Nothing,
      databaseEdition = Prelude.Nothing
    }

-- | Determines whether the recommendation is for a current-generation
-- instance.
rDSInstanceDetails_currentGeneration :: Lens.Lens' RDSInstanceDetails (Prelude.Maybe Prelude.Bool)
rDSInstanceDetails_currentGeneration = Lens.lens (\RDSInstanceDetails' {currentGeneration} -> currentGeneration) (\s@RDSInstanceDetails' {} a -> s {currentGeneration = a} :: RDSInstanceDetails)

-- | Determines whether the recommendation is for a reservation in a single
-- Availability Zone or a reservation with a backup in a second
-- Availability Zone.
rDSInstanceDetails_deploymentOption :: Lens.Lens' RDSInstanceDetails (Prelude.Maybe Prelude.Text)
rDSInstanceDetails_deploymentOption = Lens.lens (\RDSInstanceDetails' {deploymentOption} -> deploymentOption) (\s@RDSInstanceDetails' {} a -> s {deploymentOption = a} :: RDSInstanceDetails)

-- | The instance family of the recommended reservation.
rDSInstanceDetails_family :: Lens.Lens' RDSInstanceDetails (Prelude.Maybe Prelude.Text)
rDSInstanceDetails_family = Lens.lens (\RDSInstanceDetails' {family} -> family) (\s@RDSInstanceDetails' {} a -> s {family = a} :: RDSInstanceDetails)

-- | The type of instance that Amazon Web Services recommends.
rDSInstanceDetails_instanceType :: Lens.Lens' RDSInstanceDetails (Prelude.Maybe Prelude.Text)
rDSInstanceDetails_instanceType = Lens.lens (\RDSInstanceDetails' {instanceType} -> instanceType) (\s@RDSInstanceDetails' {} a -> s {instanceType = a} :: RDSInstanceDetails)

-- | The license model that the recommended reservation supports.
rDSInstanceDetails_licenseModel :: Lens.Lens' RDSInstanceDetails (Prelude.Maybe Prelude.Text)
rDSInstanceDetails_licenseModel = Lens.lens (\RDSInstanceDetails' {licenseModel} -> licenseModel) (\s@RDSInstanceDetails' {} a -> s {licenseModel = a} :: RDSInstanceDetails)

-- | Determines whether the recommended reservation is size flexible.
rDSInstanceDetails_sizeFlexEligible :: Lens.Lens' RDSInstanceDetails (Prelude.Maybe Prelude.Bool)
rDSInstanceDetails_sizeFlexEligible = Lens.lens (\RDSInstanceDetails' {sizeFlexEligible} -> sizeFlexEligible) (\s@RDSInstanceDetails' {} a -> s {sizeFlexEligible = a} :: RDSInstanceDetails)

-- | The Amazon Web Services Region of the recommended reservation.
rDSInstanceDetails_region :: Lens.Lens' RDSInstanceDetails (Prelude.Maybe Prelude.Text)
rDSInstanceDetails_region = Lens.lens (\RDSInstanceDetails' {region} -> region) (\s@RDSInstanceDetails' {} a -> s {region = a} :: RDSInstanceDetails)

-- | The database engine that the recommended reservation supports.
rDSInstanceDetails_databaseEngine :: Lens.Lens' RDSInstanceDetails (Prelude.Maybe Prelude.Text)
rDSInstanceDetails_databaseEngine = Lens.lens (\RDSInstanceDetails' {databaseEngine} -> databaseEngine) (\s@RDSInstanceDetails' {} a -> s {databaseEngine = a} :: RDSInstanceDetails)

-- | The database edition that the recommended reservation supports.
rDSInstanceDetails_databaseEdition :: Lens.Lens' RDSInstanceDetails (Prelude.Maybe Prelude.Text)
rDSInstanceDetails_databaseEdition = Lens.lens (\RDSInstanceDetails' {databaseEdition} -> databaseEdition) (\s@RDSInstanceDetails' {} a -> s {databaseEdition = a} :: RDSInstanceDetails)

instance Core.FromJSON RDSInstanceDetails where
  parseJSON =
    Core.withObject
      "RDSInstanceDetails"
      ( \x ->
          RDSInstanceDetails'
            Prelude.<$> (x Core..:? "CurrentGeneration")
            Prelude.<*> (x Core..:? "DeploymentOption")
            Prelude.<*> (x Core..:? "Family")
            Prelude.<*> (x Core..:? "InstanceType")
            Prelude.<*> (x Core..:? "LicenseModel")
            Prelude.<*> (x Core..:? "SizeFlexEligible")
            Prelude.<*> (x Core..:? "Region")
            Prelude.<*> (x Core..:? "DatabaseEngine")
            Prelude.<*> (x Core..:? "DatabaseEdition")
      )

instance Prelude.Hashable RDSInstanceDetails where
  hashWithSalt salt' RDSInstanceDetails' {..} =
    salt' `Prelude.hashWithSalt` databaseEdition
      `Prelude.hashWithSalt` databaseEngine
      `Prelude.hashWithSalt` region
      `Prelude.hashWithSalt` sizeFlexEligible
      `Prelude.hashWithSalt` licenseModel
      `Prelude.hashWithSalt` instanceType
      `Prelude.hashWithSalt` family
      `Prelude.hashWithSalt` deploymentOption
      `Prelude.hashWithSalt` currentGeneration

instance Prelude.NFData RDSInstanceDetails where
  rnf RDSInstanceDetails' {..} =
    Prelude.rnf currentGeneration
      `Prelude.seq` Prelude.rnf databaseEdition
      `Prelude.seq` Prelude.rnf databaseEngine
      `Prelude.seq` Prelude.rnf region
      `Prelude.seq` Prelude.rnf sizeFlexEligible
      `Prelude.seq` Prelude.rnf licenseModel
      `Prelude.seq` Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf family
      `Prelude.seq` Prelude.rnf deploymentOption
