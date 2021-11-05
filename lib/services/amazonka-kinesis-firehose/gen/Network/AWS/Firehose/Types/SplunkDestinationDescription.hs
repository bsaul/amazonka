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
-- Module      : Amazonka.Firehose.Types.SplunkDestinationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Firehose.Types.SplunkDestinationDescription where

import qualified Amazonka.Core as Core
import Amazonka.Firehose.Types.CloudWatchLoggingOptions
import Amazonka.Firehose.Types.HECEndpointType
import Amazonka.Firehose.Types.ProcessingConfiguration
import Amazonka.Firehose.Types.S3DestinationDescription
import Amazonka.Firehose.Types.SplunkRetryOptions
import Amazonka.Firehose.Types.SplunkS3BackupMode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a destination in Splunk.
--
-- /See:/ 'newSplunkDestinationDescription' smart constructor.
data SplunkDestinationDescription = SplunkDestinationDescription'
  { -- | Defines how documents should be delivered to Amazon S3. When set to
    -- @FailedDocumentsOnly@, Kinesis Data Firehose writes any data that could
    -- not be indexed to the configured Amazon S3 destination. When set to
    -- @AllDocuments@, Kinesis Data Firehose delivers all incoming records to
    -- Amazon S3, and also writes failed documents to Amazon S3. Default value
    -- is @FailedDocumentsOnly@.
    s3BackupMode :: Prelude.Maybe SplunkS3BackupMode,
    -- | A GUID you obtain from your Splunk cluster when you create a new HEC
    -- endpoint.
    hECToken :: Prelude.Maybe Prelude.Text,
    -- | This type can be either \"Raw\" or \"Event.\"
    hECEndpointType :: Prelude.Maybe HECEndpointType,
    -- | The Amazon CloudWatch logging options for your delivery stream.
    cloudWatchLoggingOptions :: Prelude.Maybe CloudWatchLoggingOptions,
    -- | The amount of time that Kinesis Data Firehose waits to receive an
    -- acknowledgment from Splunk after it sends it data. At the end of the
    -- timeout period, Kinesis Data Firehose either tries to send the data
    -- again or considers it an error, based on your retry settings.
    hECAcknowledgmentTimeoutInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon S3 destination.>
    s3DestinationDescription :: Prelude.Maybe S3DestinationDescription,
    -- | The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose
    -- sends your data.
    hECEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The retry behavior in case Kinesis Data Firehose is unable to deliver
    -- data to Splunk or if it doesn\'t receive an acknowledgment of receipt
    -- from Splunk.
    retryOptions :: Prelude.Maybe SplunkRetryOptions,
    -- | The data processing configuration.
    processingConfiguration :: Prelude.Maybe ProcessingConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SplunkDestinationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3BackupMode', 'splunkDestinationDescription_s3BackupMode' - Defines how documents should be delivered to Amazon S3. When set to
-- @FailedDocumentsOnly@, Kinesis Data Firehose writes any data that could
-- not be indexed to the configured Amazon S3 destination. When set to
-- @AllDocuments@, Kinesis Data Firehose delivers all incoming records to
-- Amazon S3, and also writes failed documents to Amazon S3. Default value
-- is @FailedDocumentsOnly@.
--
-- 'hECToken', 'splunkDestinationDescription_hECToken' - A GUID you obtain from your Splunk cluster when you create a new HEC
-- endpoint.
--
-- 'hECEndpointType', 'splunkDestinationDescription_hECEndpointType' - This type can be either \"Raw\" or \"Event.\"
--
-- 'cloudWatchLoggingOptions', 'splunkDestinationDescription_cloudWatchLoggingOptions' - The Amazon CloudWatch logging options for your delivery stream.
--
-- 'hECAcknowledgmentTimeoutInSeconds', 'splunkDestinationDescription_hECAcknowledgmentTimeoutInSeconds' - The amount of time that Kinesis Data Firehose waits to receive an
-- acknowledgment from Splunk after it sends it data. At the end of the
-- timeout period, Kinesis Data Firehose either tries to send the data
-- again or considers it an error, based on your retry settings.
--
-- 's3DestinationDescription', 'splunkDestinationDescription_s3DestinationDescription' - The Amazon S3 destination.>
--
-- 'hECEndpoint', 'splunkDestinationDescription_hECEndpoint' - The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose
-- sends your data.
--
-- 'retryOptions', 'splunkDestinationDescription_retryOptions' - The retry behavior in case Kinesis Data Firehose is unable to deliver
-- data to Splunk or if it doesn\'t receive an acknowledgment of receipt
-- from Splunk.
--
-- 'processingConfiguration', 'splunkDestinationDescription_processingConfiguration' - The data processing configuration.
newSplunkDestinationDescription ::
  SplunkDestinationDescription
newSplunkDestinationDescription =
  SplunkDestinationDescription'
    { s3BackupMode =
        Prelude.Nothing,
      hECToken = Prelude.Nothing,
      hECEndpointType = Prelude.Nothing,
      cloudWatchLoggingOptions = Prelude.Nothing,
      hECAcknowledgmentTimeoutInSeconds =
        Prelude.Nothing,
      s3DestinationDescription = Prelude.Nothing,
      hECEndpoint = Prelude.Nothing,
      retryOptions = Prelude.Nothing,
      processingConfiguration = Prelude.Nothing
    }

-- | Defines how documents should be delivered to Amazon S3. When set to
-- @FailedDocumentsOnly@, Kinesis Data Firehose writes any data that could
-- not be indexed to the configured Amazon S3 destination. When set to
-- @AllDocuments@, Kinesis Data Firehose delivers all incoming records to
-- Amazon S3, and also writes failed documents to Amazon S3. Default value
-- is @FailedDocumentsOnly@.
splunkDestinationDescription_s3BackupMode :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe SplunkS3BackupMode)
splunkDestinationDescription_s3BackupMode = Lens.lens (\SplunkDestinationDescription' {s3BackupMode} -> s3BackupMode) (\s@SplunkDestinationDescription' {} a -> s {s3BackupMode = a} :: SplunkDestinationDescription)

-- | A GUID you obtain from your Splunk cluster when you create a new HEC
-- endpoint.
splunkDestinationDescription_hECToken :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe Prelude.Text)
splunkDestinationDescription_hECToken = Lens.lens (\SplunkDestinationDescription' {hECToken} -> hECToken) (\s@SplunkDestinationDescription' {} a -> s {hECToken = a} :: SplunkDestinationDescription)

-- | This type can be either \"Raw\" or \"Event.\"
splunkDestinationDescription_hECEndpointType :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe HECEndpointType)
splunkDestinationDescription_hECEndpointType = Lens.lens (\SplunkDestinationDescription' {hECEndpointType} -> hECEndpointType) (\s@SplunkDestinationDescription' {} a -> s {hECEndpointType = a} :: SplunkDestinationDescription)

-- | The Amazon CloudWatch logging options for your delivery stream.
splunkDestinationDescription_cloudWatchLoggingOptions :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe CloudWatchLoggingOptions)
splunkDestinationDescription_cloudWatchLoggingOptions = Lens.lens (\SplunkDestinationDescription' {cloudWatchLoggingOptions} -> cloudWatchLoggingOptions) (\s@SplunkDestinationDescription' {} a -> s {cloudWatchLoggingOptions = a} :: SplunkDestinationDescription)

-- | The amount of time that Kinesis Data Firehose waits to receive an
-- acknowledgment from Splunk after it sends it data. At the end of the
-- timeout period, Kinesis Data Firehose either tries to send the data
-- again or considers it an error, based on your retry settings.
splunkDestinationDescription_hECAcknowledgmentTimeoutInSeconds :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe Prelude.Natural)
splunkDestinationDescription_hECAcknowledgmentTimeoutInSeconds = Lens.lens (\SplunkDestinationDescription' {hECAcknowledgmentTimeoutInSeconds} -> hECAcknowledgmentTimeoutInSeconds) (\s@SplunkDestinationDescription' {} a -> s {hECAcknowledgmentTimeoutInSeconds = a} :: SplunkDestinationDescription)

-- | The Amazon S3 destination.>
splunkDestinationDescription_s3DestinationDescription :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe S3DestinationDescription)
splunkDestinationDescription_s3DestinationDescription = Lens.lens (\SplunkDestinationDescription' {s3DestinationDescription} -> s3DestinationDescription) (\s@SplunkDestinationDescription' {} a -> s {s3DestinationDescription = a} :: SplunkDestinationDescription)

-- | The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose
-- sends your data.
splunkDestinationDescription_hECEndpoint :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe Prelude.Text)
splunkDestinationDescription_hECEndpoint = Lens.lens (\SplunkDestinationDescription' {hECEndpoint} -> hECEndpoint) (\s@SplunkDestinationDescription' {} a -> s {hECEndpoint = a} :: SplunkDestinationDescription)

-- | The retry behavior in case Kinesis Data Firehose is unable to deliver
-- data to Splunk or if it doesn\'t receive an acknowledgment of receipt
-- from Splunk.
splunkDestinationDescription_retryOptions :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe SplunkRetryOptions)
splunkDestinationDescription_retryOptions = Lens.lens (\SplunkDestinationDescription' {retryOptions} -> retryOptions) (\s@SplunkDestinationDescription' {} a -> s {retryOptions = a} :: SplunkDestinationDescription)

-- | The data processing configuration.
splunkDestinationDescription_processingConfiguration :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe ProcessingConfiguration)
splunkDestinationDescription_processingConfiguration = Lens.lens (\SplunkDestinationDescription' {processingConfiguration} -> processingConfiguration) (\s@SplunkDestinationDescription' {} a -> s {processingConfiguration = a} :: SplunkDestinationDescription)

instance Core.FromJSON SplunkDestinationDescription where
  parseJSON =
    Core.withObject
      "SplunkDestinationDescription"
      ( \x ->
          SplunkDestinationDescription'
            Prelude.<$> (x Core..:? "S3BackupMode")
            Prelude.<*> (x Core..:? "HECToken")
            Prelude.<*> (x Core..:? "HECEndpointType")
            Prelude.<*> (x Core..:? "CloudWatchLoggingOptions")
            Prelude.<*> (x Core..:? "HECAcknowledgmentTimeoutInSeconds")
            Prelude.<*> (x Core..:? "S3DestinationDescription")
            Prelude.<*> (x Core..:? "HECEndpoint")
            Prelude.<*> (x Core..:? "RetryOptions")
            Prelude.<*> (x Core..:? "ProcessingConfiguration")
      )

instance
  Prelude.Hashable
    SplunkDestinationDescription

instance Prelude.NFData SplunkDestinationDescription
