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
-- Module      : Amazonka.CostExplorer.GetReservationUtilization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the reservation utilization for your account. Management
-- account in an organization have access to member accounts. You can
-- filter data by dimensions in a time period. You can use
-- @GetDimensionValues@ to determine the possible dimension values.
-- Currently, you can group only by @SUBSCRIPTION_ID@.
module Amazonka.CostExplorer.GetReservationUtilization
  ( -- * Creating a Request
    GetReservationUtilization (..),
    newGetReservationUtilization,

    -- * Request Lenses
    getReservationUtilization_groupBy,
    getReservationUtilization_nextPageToken,
    getReservationUtilization_granularity,
    getReservationUtilization_filter,
    getReservationUtilization_maxResults,
    getReservationUtilization_sortBy,
    getReservationUtilization_timePeriod,

    -- * Destructuring the Response
    GetReservationUtilizationResponse (..),
    newGetReservationUtilizationResponse,

    -- * Response Lenses
    getReservationUtilizationResponse_nextPageToken,
    getReservationUtilizationResponse_total,
    getReservationUtilizationResponse_httpStatus,
    getReservationUtilizationResponse_utilizationsByTime,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CostExplorer.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetReservationUtilization' smart constructor.
data GetReservationUtilization = GetReservationUtilization'
  { -- | Groups only by @SUBSCRIPTION_ID@. Metadata is included.
    groupBy :: Prelude.Maybe [GroupDefinition],
    -- | The token to retrieve the next set of results. Amazon Web Services
    -- provides the token when the response from a previous call has more
    -- results than the maximum page size.
    nextPageToken :: Prelude.Maybe Prelude.Text,
    -- | If @GroupBy@ is set, @Granularity@ can\'t be set. If @Granularity@
    -- isn\'t set, the response object doesn\'t include @Granularity@, either
    -- @MONTHLY@ or @DAILY@. If both @GroupBy@ and @Granularity@ aren\'t set,
    -- @GetReservationUtilization@ defaults to @DAILY@.
    --
    -- The @GetReservationUtilization@ operation supports only @DAILY@ and
    -- @MONTHLY@ granularities.
    granularity :: Prelude.Maybe Granularity,
    -- | Filters utilization data by dimensions. You can filter by the following
    -- dimensions:
    --
    -- -   AZ
    --
    -- -   CACHE_ENGINE
    --
    -- -   DEPLOYMENT_OPTION
    --
    -- -   INSTANCE_TYPE
    --
    -- -   LINKED_ACCOUNT
    --
    -- -   OPERATING_SYSTEM
    --
    -- -   PLATFORM
    --
    -- -   REGION
    --
    -- -   SERVICE
    --
    -- -   SCOPE
    --
    -- -   TENANCY
    --
    -- @GetReservationUtilization@ uses the same
    -- <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression>
    -- object as the other operations, but only @AND@ is supported among each
    -- dimension, and nesting is supported up to only one level deep. If there
    -- are multiple values for a dimension, they are OR\'d together.
    filter' :: Prelude.Maybe Expression,
    -- | The maximum number of objects that you returned for this request. If
    -- more objects are available, in the response, Amazon Web Services
    -- provides a NextPageToken value that you can use in a subsequent call to
    -- get the next batch of objects.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The value by which you want to sort the data.
    --
    -- The following values are supported for @Key@:
    --
    -- -   @UtilizationPercentage@
    --
    -- -   @UtilizationPercentageInUnits@
    --
    -- -   @PurchasedHours@
    --
    -- -   @PurchasedUnits@
    --
    -- -   @TotalActualHours@
    --
    -- -   @TotalActualUnits@
    --
    -- -   @UnusedHours@
    --
    -- -   @UnusedUnits@
    --
    -- -   @OnDemandCostOfRIHoursUsed@
    --
    -- -   @NetRISavings@
    --
    -- -   @TotalPotentialRISavings@
    --
    -- -   @AmortizedUpfrontFee@
    --
    -- -   @AmortizedRecurringFee@
    --
    -- -   @TotalAmortizedFee@
    --
    -- -   @RICostForUnusedHours@
    --
    -- -   @RealizedSavings@
    --
    -- -   @UnrealizedSavings@
    --
    -- Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@.
    sortBy :: Prelude.Maybe SortDefinition,
    -- | Sets the start and end dates for retrieving RI utilization. The start
    -- date is inclusive, but the end date is exclusive. For example, if
    -- @start@ is @2017-01-01@ and @end@ is @2017-05-01@, then the cost and
    -- usage data is retrieved from @2017-01-01@ up to and including
    -- @2017-04-30@ but not including @2017-05-01@.
    timePeriod :: DateInterval
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetReservationUtilization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupBy', 'getReservationUtilization_groupBy' - Groups only by @SUBSCRIPTION_ID@. Metadata is included.
--
-- 'nextPageToken', 'getReservationUtilization_nextPageToken' - The token to retrieve the next set of results. Amazon Web Services
-- provides the token when the response from a previous call has more
-- results than the maximum page size.
--
-- 'granularity', 'getReservationUtilization_granularity' - If @GroupBy@ is set, @Granularity@ can\'t be set. If @Granularity@
-- isn\'t set, the response object doesn\'t include @Granularity@, either
-- @MONTHLY@ or @DAILY@. If both @GroupBy@ and @Granularity@ aren\'t set,
-- @GetReservationUtilization@ defaults to @DAILY@.
--
-- The @GetReservationUtilization@ operation supports only @DAILY@ and
-- @MONTHLY@ granularities.
--
-- 'filter'', 'getReservationUtilization_filter' - Filters utilization data by dimensions. You can filter by the following
-- dimensions:
--
-- -   AZ
--
-- -   CACHE_ENGINE
--
-- -   DEPLOYMENT_OPTION
--
-- -   INSTANCE_TYPE
--
-- -   LINKED_ACCOUNT
--
-- -   OPERATING_SYSTEM
--
-- -   PLATFORM
--
-- -   REGION
--
-- -   SERVICE
--
-- -   SCOPE
--
-- -   TENANCY
--
-- @GetReservationUtilization@ uses the same
-- <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression>
-- object as the other operations, but only @AND@ is supported among each
-- dimension, and nesting is supported up to only one level deep. If there
-- are multiple values for a dimension, they are OR\'d together.
--
-- 'maxResults', 'getReservationUtilization_maxResults' - The maximum number of objects that you returned for this request. If
-- more objects are available, in the response, Amazon Web Services
-- provides a NextPageToken value that you can use in a subsequent call to
-- get the next batch of objects.
--
-- 'sortBy', 'getReservationUtilization_sortBy' - The value by which you want to sort the data.
--
-- The following values are supported for @Key@:
--
-- -   @UtilizationPercentage@
--
-- -   @UtilizationPercentageInUnits@
--
-- -   @PurchasedHours@
--
-- -   @PurchasedUnits@
--
-- -   @TotalActualHours@
--
-- -   @TotalActualUnits@
--
-- -   @UnusedHours@
--
-- -   @UnusedUnits@
--
-- -   @OnDemandCostOfRIHoursUsed@
--
-- -   @NetRISavings@
--
-- -   @TotalPotentialRISavings@
--
-- -   @AmortizedUpfrontFee@
--
-- -   @AmortizedRecurringFee@
--
-- -   @TotalAmortizedFee@
--
-- -   @RICostForUnusedHours@
--
-- -   @RealizedSavings@
--
-- -   @UnrealizedSavings@
--
-- Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@.
--
-- 'timePeriod', 'getReservationUtilization_timePeriod' - Sets the start and end dates for retrieving RI utilization. The start
-- date is inclusive, but the end date is exclusive. For example, if
-- @start@ is @2017-01-01@ and @end@ is @2017-05-01@, then the cost and
-- usage data is retrieved from @2017-01-01@ up to and including
-- @2017-04-30@ but not including @2017-05-01@.
newGetReservationUtilization ::
  -- | 'timePeriod'
  DateInterval ->
  GetReservationUtilization
newGetReservationUtilization pTimePeriod_ =
  GetReservationUtilization'
    { groupBy =
        Prelude.Nothing,
      nextPageToken = Prelude.Nothing,
      granularity = Prelude.Nothing,
      filter' = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      timePeriod = pTimePeriod_
    }

-- | Groups only by @SUBSCRIPTION_ID@. Metadata is included.
getReservationUtilization_groupBy :: Lens.Lens' GetReservationUtilization (Prelude.Maybe [GroupDefinition])
getReservationUtilization_groupBy = Lens.lens (\GetReservationUtilization' {groupBy} -> groupBy) (\s@GetReservationUtilization' {} a -> s {groupBy = a} :: GetReservationUtilization) Prelude.. Lens.mapping Lens.coerced

-- | The token to retrieve the next set of results. Amazon Web Services
-- provides the token when the response from a previous call has more
-- results than the maximum page size.
getReservationUtilization_nextPageToken :: Lens.Lens' GetReservationUtilization (Prelude.Maybe Prelude.Text)
getReservationUtilization_nextPageToken = Lens.lens (\GetReservationUtilization' {nextPageToken} -> nextPageToken) (\s@GetReservationUtilization' {} a -> s {nextPageToken = a} :: GetReservationUtilization)

-- | If @GroupBy@ is set, @Granularity@ can\'t be set. If @Granularity@
-- isn\'t set, the response object doesn\'t include @Granularity@, either
-- @MONTHLY@ or @DAILY@. If both @GroupBy@ and @Granularity@ aren\'t set,
-- @GetReservationUtilization@ defaults to @DAILY@.
--
-- The @GetReservationUtilization@ operation supports only @DAILY@ and
-- @MONTHLY@ granularities.
getReservationUtilization_granularity :: Lens.Lens' GetReservationUtilization (Prelude.Maybe Granularity)
getReservationUtilization_granularity = Lens.lens (\GetReservationUtilization' {granularity} -> granularity) (\s@GetReservationUtilization' {} a -> s {granularity = a} :: GetReservationUtilization)

-- | Filters utilization data by dimensions. You can filter by the following
-- dimensions:
--
-- -   AZ
--
-- -   CACHE_ENGINE
--
-- -   DEPLOYMENT_OPTION
--
-- -   INSTANCE_TYPE
--
-- -   LINKED_ACCOUNT
--
-- -   OPERATING_SYSTEM
--
-- -   PLATFORM
--
-- -   REGION
--
-- -   SERVICE
--
-- -   SCOPE
--
-- -   TENANCY
--
-- @GetReservationUtilization@ uses the same
-- <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression>
-- object as the other operations, but only @AND@ is supported among each
-- dimension, and nesting is supported up to only one level deep. If there
-- are multiple values for a dimension, they are OR\'d together.
getReservationUtilization_filter :: Lens.Lens' GetReservationUtilization (Prelude.Maybe Expression)
getReservationUtilization_filter = Lens.lens (\GetReservationUtilization' {filter'} -> filter') (\s@GetReservationUtilization' {} a -> s {filter' = a} :: GetReservationUtilization)

-- | The maximum number of objects that you returned for this request. If
-- more objects are available, in the response, Amazon Web Services
-- provides a NextPageToken value that you can use in a subsequent call to
-- get the next batch of objects.
getReservationUtilization_maxResults :: Lens.Lens' GetReservationUtilization (Prelude.Maybe Prelude.Natural)
getReservationUtilization_maxResults = Lens.lens (\GetReservationUtilization' {maxResults} -> maxResults) (\s@GetReservationUtilization' {} a -> s {maxResults = a} :: GetReservationUtilization)

-- | The value by which you want to sort the data.
--
-- The following values are supported for @Key@:
--
-- -   @UtilizationPercentage@
--
-- -   @UtilizationPercentageInUnits@
--
-- -   @PurchasedHours@
--
-- -   @PurchasedUnits@
--
-- -   @TotalActualHours@
--
-- -   @TotalActualUnits@
--
-- -   @UnusedHours@
--
-- -   @UnusedUnits@
--
-- -   @OnDemandCostOfRIHoursUsed@
--
-- -   @NetRISavings@
--
-- -   @TotalPotentialRISavings@
--
-- -   @AmortizedUpfrontFee@
--
-- -   @AmortizedRecurringFee@
--
-- -   @TotalAmortizedFee@
--
-- -   @RICostForUnusedHours@
--
-- -   @RealizedSavings@
--
-- -   @UnrealizedSavings@
--
-- Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@.
getReservationUtilization_sortBy :: Lens.Lens' GetReservationUtilization (Prelude.Maybe SortDefinition)
getReservationUtilization_sortBy = Lens.lens (\GetReservationUtilization' {sortBy} -> sortBy) (\s@GetReservationUtilization' {} a -> s {sortBy = a} :: GetReservationUtilization)

-- | Sets the start and end dates for retrieving RI utilization. The start
-- date is inclusive, but the end date is exclusive. For example, if
-- @start@ is @2017-01-01@ and @end@ is @2017-05-01@, then the cost and
-- usage data is retrieved from @2017-01-01@ up to and including
-- @2017-04-30@ but not including @2017-05-01@.
getReservationUtilization_timePeriod :: Lens.Lens' GetReservationUtilization DateInterval
getReservationUtilization_timePeriod = Lens.lens (\GetReservationUtilization' {timePeriod} -> timePeriod) (\s@GetReservationUtilization' {} a -> s {timePeriod = a} :: GetReservationUtilization)

instance Core.AWSRequest GetReservationUtilization where
  type
    AWSResponse GetReservationUtilization =
      GetReservationUtilizationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetReservationUtilizationResponse'
            Prelude.<$> (x Core..?> "NextPageToken")
            Prelude.<*> (x Core..?> "Total")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "UtilizationsByTime"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable GetReservationUtilization where
  hashWithSalt salt' GetReservationUtilization' {..} =
    salt' `Prelude.hashWithSalt` timePeriod
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` filter'
      `Prelude.hashWithSalt` granularity
      `Prelude.hashWithSalt` nextPageToken
      `Prelude.hashWithSalt` groupBy

instance Prelude.NFData GetReservationUtilization where
  rnf GetReservationUtilization' {..} =
    Prelude.rnf groupBy
      `Prelude.seq` Prelude.rnf timePeriod
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf filter'
      `Prelude.seq` Prelude.rnf granularity
      `Prelude.seq` Prelude.rnf nextPageToken

instance Core.ToHeaders GetReservationUtilization where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSInsightsIndexService.GetReservationUtilization" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetReservationUtilization where
  toJSON GetReservationUtilization' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("GroupBy" Core..=) Prelude.<$> groupBy,
            ("NextPageToken" Core..=) Prelude.<$> nextPageToken,
            ("Granularity" Core..=) Prelude.<$> granularity,
            ("Filter" Core..=) Prelude.<$> filter',
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("SortBy" Core..=) Prelude.<$> sortBy,
            Prelude.Just ("TimePeriod" Core..= timePeriod)
          ]
      )

instance Core.ToPath GetReservationUtilization where
  toPath = Prelude.const "/"

instance Core.ToQuery GetReservationUtilization where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetReservationUtilizationResponse' smart constructor.
data GetReservationUtilizationResponse = GetReservationUtilizationResponse'
  { -- | The token for the next set of retrievable results. Amazon Web Services
    -- provides the token when the response from a previous call has more
    -- results than the maximum page size.
    nextPageToken :: Prelude.Maybe Prelude.Text,
    -- | The total amount of time that you used your RIs.
    total :: Prelude.Maybe ReservationAggregates,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The amount of time that you used your RIs.
    utilizationsByTime :: [UtilizationByTime]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetReservationUtilizationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextPageToken', 'getReservationUtilizationResponse_nextPageToken' - The token for the next set of retrievable results. Amazon Web Services
-- provides the token when the response from a previous call has more
-- results than the maximum page size.
--
-- 'total', 'getReservationUtilizationResponse_total' - The total amount of time that you used your RIs.
--
-- 'httpStatus', 'getReservationUtilizationResponse_httpStatus' - The response's http status code.
--
-- 'utilizationsByTime', 'getReservationUtilizationResponse_utilizationsByTime' - The amount of time that you used your RIs.
newGetReservationUtilizationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetReservationUtilizationResponse
newGetReservationUtilizationResponse pHttpStatus_ =
  GetReservationUtilizationResponse'
    { nextPageToken =
        Prelude.Nothing,
      total = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      utilizationsByTime = Prelude.mempty
    }

-- | The token for the next set of retrievable results. Amazon Web Services
-- provides the token when the response from a previous call has more
-- results than the maximum page size.
getReservationUtilizationResponse_nextPageToken :: Lens.Lens' GetReservationUtilizationResponse (Prelude.Maybe Prelude.Text)
getReservationUtilizationResponse_nextPageToken = Lens.lens (\GetReservationUtilizationResponse' {nextPageToken} -> nextPageToken) (\s@GetReservationUtilizationResponse' {} a -> s {nextPageToken = a} :: GetReservationUtilizationResponse)

-- | The total amount of time that you used your RIs.
getReservationUtilizationResponse_total :: Lens.Lens' GetReservationUtilizationResponse (Prelude.Maybe ReservationAggregates)
getReservationUtilizationResponse_total = Lens.lens (\GetReservationUtilizationResponse' {total} -> total) (\s@GetReservationUtilizationResponse' {} a -> s {total = a} :: GetReservationUtilizationResponse)

-- | The response's http status code.
getReservationUtilizationResponse_httpStatus :: Lens.Lens' GetReservationUtilizationResponse Prelude.Int
getReservationUtilizationResponse_httpStatus = Lens.lens (\GetReservationUtilizationResponse' {httpStatus} -> httpStatus) (\s@GetReservationUtilizationResponse' {} a -> s {httpStatus = a} :: GetReservationUtilizationResponse)

-- | The amount of time that you used your RIs.
getReservationUtilizationResponse_utilizationsByTime :: Lens.Lens' GetReservationUtilizationResponse [UtilizationByTime]
getReservationUtilizationResponse_utilizationsByTime = Lens.lens (\GetReservationUtilizationResponse' {utilizationsByTime} -> utilizationsByTime) (\s@GetReservationUtilizationResponse' {} a -> s {utilizationsByTime = a} :: GetReservationUtilizationResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    GetReservationUtilizationResponse
  where
  rnf GetReservationUtilizationResponse' {..} =
    Prelude.rnf nextPageToken
      `Prelude.seq` Prelude.rnf utilizationsByTime
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf total
