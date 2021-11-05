{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Backup.GetSupportedResourceTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the Amazon Web Services resource types supported by Backup.
module Amazonka.Backup.GetSupportedResourceTypes
  ( -- * Creating a Request
    GetSupportedResourceTypes (..),
    newGetSupportedResourceTypes,

    -- * Destructuring the Response
    GetSupportedResourceTypesResponse (..),
    newGetSupportedResourceTypesResponse,

    -- * Response Lenses
    getSupportedResourceTypesResponse_resourceTypes,
    getSupportedResourceTypesResponse_httpStatus,
  )
where

import Amazonka.Backup.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetSupportedResourceTypes' smart constructor.
data GetSupportedResourceTypes = GetSupportedResourceTypes'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSupportedResourceTypes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetSupportedResourceTypes ::
  GetSupportedResourceTypes
newGetSupportedResourceTypes =
  GetSupportedResourceTypes'

instance Core.AWSRequest GetSupportedResourceTypes where
  type
    AWSResponse GetSupportedResourceTypes =
      GetSupportedResourceTypesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSupportedResourceTypesResponse'
            Prelude.<$> (x Core..?> "ResourceTypes" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSupportedResourceTypes

instance Prelude.NFData GetSupportedResourceTypes

instance Core.ToHeaders GetSupportedResourceTypes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetSupportedResourceTypes where
  toPath = Prelude.const "/supported-resource-types"

instance Core.ToQuery GetSupportedResourceTypes where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetSupportedResourceTypesResponse' smart constructor.
data GetSupportedResourceTypesResponse = GetSupportedResourceTypesResponse'
  { -- | Contains a string with the supported Amazon Web Services resource types:
    --
    -- -   @Aurora@ for Amazon Aurora
    --
    -- -   @DynamoDB@ for Amazon DynamoDB
    --
    -- -   @EBS@ for Amazon Elastic Block Store
    --
    -- -   @EC2@ for Amazon Elastic Compute Cloud
    --
    -- -   @EFS@ for Amazon Elastic File System
    --
    -- -   @FSX@ for Amazon FSx
    --
    -- -   @RDS@ for Amazon Relational Database Service
    --
    -- -   @Storage Gateway@ for Storage Gateway
    resourceTypes :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSupportedResourceTypesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceTypes', 'getSupportedResourceTypesResponse_resourceTypes' - Contains a string with the supported Amazon Web Services resource types:
--
-- -   @Aurora@ for Amazon Aurora
--
-- -   @DynamoDB@ for Amazon DynamoDB
--
-- -   @EBS@ for Amazon Elastic Block Store
--
-- -   @EC2@ for Amazon Elastic Compute Cloud
--
-- -   @EFS@ for Amazon Elastic File System
--
-- -   @FSX@ for Amazon FSx
--
-- -   @RDS@ for Amazon Relational Database Service
--
-- -   @Storage Gateway@ for Storage Gateway
--
-- 'httpStatus', 'getSupportedResourceTypesResponse_httpStatus' - The response's http status code.
newGetSupportedResourceTypesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSupportedResourceTypesResponse
newGetSupportedResourceTypesResponse pHttpStatus_ =
  GetSupportedResourceTypesResponse'
    { resourceTypes =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains a string with the supported Amazon Web Services resource types:
--
-- -   @Aurora@ for Amazon Aurora
--
-- -   @DynamoDB@ for Amazon DynamoDB
--
-- -   @EBS@ for Amazon Elastic Block Store
--
-- -   @EC2@ for Amazon Elastic Compute Cloud
--
-- -   @EFS@ for Amazon Elastic File System
--
-- -   @FSX@ for Amazon FSx
--
-- -   @RDS@ for Amazon Relational Database Service
--
-- -   @Storage Gateway@ for Storage Gateway
getSupportedResourceTypesResponse_resourceTypes :: Lens.Lens' GetSupportedResourceTypesResponse (Prelude.Maybe [Prelude.Text])
getSupportedResourceTypesResponse_resourceTypes = Lens.lens (\GetSupportedResourceTypesResponse' {resourceTypes} -> resourceTypes) (\s@GetSupportedResourceTypesResponse' {} a -> s {resourceTypes = a} :: GetSupportedResourceTypesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getSupportedResourceTypesResponse_httpStatus :: Lens.Lens' GetSupportedResourceTypesResponse Prelude.Int
getSupportedResourceTypesResponse_httpStatus = Lens.lens (\GetSupportedResourceTypesResponse' {httpStatus} -> httpStatus) (\s@GetSupportedResourceTypesResponse' {} a -> s {httpStatus = a} :: GetSupportedResourceTypesResponse)

instance
  Prelude.NFData
    GetSupportedResourceTypesResponse
