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
-- Module      : Amazonka.GuardDuty.Types.AdminAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GuardDuty.Types.AdminAccount where

import qualified Amazonka.Core as Core
import Amazonka.GuardDuty.Types.AdminStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The account within the organization specified as the GuardDuty delegated
-- administrator.
--
-- /See:/ 'newAdminAccount' smart constructor.
data AdminAccount = AdminAccount'
  { -- | The AWS account ID for the account.
    adminAccountId :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the account is enabled as the delegated administrator.
    adminStatus :: Prelude.Maybe AdminStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdminAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'adminAccountId', 'adminAccount_adminAccountId' - The AWS account ID for the account.
--
-- 'adminStatus', 'adminAccount_adminStatus' - Indicates whether the account is enabled as the delegated administrator.
newAdminAccount ::
  AdminAccount
newAdminAccount =
  AdminAccount'
    { adminAccountId = Prelude.Nothing,
      adminStatus = Prelude.Nothing
    }

-- | The AWS account ID for the account.
adminAccount_adminAccountId :: Lens.Lens' AdminAccount (Prelude.Maybe Prelude.Text)
adminAccount_adminAccountId = Lens.lens (\AdminAccount' {adminAccountId} -> adminAccountId) (\s@AdminAccount' {} a -> s {adminAccountId = a} :: AdminAccount)

-- | Indicates whether the account is enabled as the delegated administrator.
adminAccount_adminStatus :: Lens.Lens' AdminAccount (Prelude.Maybe AdminStatus)
adminAccount_adminStatus = Lens.lens (\AdminAccount' {adminStatus} -> adminStatus) (\s@AdminAccount' {} a -> s {adminStatus = a} :: AdminAccount)

instance Core.FromJSON AdminAccount where
  parseJSON =
    Core.withObject
      "AdminAccount"
      ( \x ->
          AdminAccount'
            Prelude.<$> (x Core..:? "adminAccountId")
            Prelude.<*> (x Core..:? "adminStatus")
      )

instance Prelude.Hashable AdminAccount where
  hashWithSalt salt' AdminAccount' {..} =
    salt' `Prelude.hashWithSalt` adminStatus
      `Prelude.hashWithSalt` adminAccountId

instance Prelude.NFData AdminAccount where
  rnf AdminAccount' {..} =
    Prelude.rnf adminAccountId
      `Prelude.seq` Prelude.rnf adminStatus
