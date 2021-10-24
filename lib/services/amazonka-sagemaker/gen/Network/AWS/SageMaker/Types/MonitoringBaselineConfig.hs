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
-- Module      : Network.AWS.SageMaker.Types.MonitoringBaselineConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringBaselineConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.MonitoringConstraintsResource
import Network.AWS.SageMaker.Types.MonitoringStatisticsResource

-- | Configuration for monitoring constraints and monitoring statistics.
-- These baseline resources are compared against the results of the current
-- job from the series of jobs scheduled to collect data periodically.
--
-- /See:/ 'newMonitoringBaselineConfig' smart constructor.
data MonitoringBaselineConfig = MonitoringBaselineConfig'
  { -- | The baseline constraint file in Amazon S3 that the current monitoring
    -- job should validated against.
    constraintsResource :: Prelude.Maybe MonitoringConstraintsResource,
    -- | The baseline statistics file in Amazon S3 that the current monitoring
    -- job should be validated against.
    statisticsResource :: Prelude.Maybe MonitoringStatisticsResource,
    -- | The name of the job that performs baselining for the monitoring job.
    baseliningJobName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MonitoringBaselineConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'constraintsResource', 'monitoringBaselineConfig_constraintsResource' - The baseline constraint file in Amazon S3 that the current monitoring
-- job should validated against.
--
-- 'statisticsResource', 'monitoringBaselineConfig_statisticsResource' - The baseline statistics file in Amazon S3 that the current monitoring
-- job should be validated against.
--
-- 'baseliningJobName', 'monitoringBaselineConfig_baseliningJobName' - The name of the job that performs baselining for the monitoring job.
newMonitoringBaselineConfig ::
  MonitoringBaselineConfig
newMonitoringBaselineConfig =
  MonitoringBaselineConfig'
    { constraintsResource =
        Prelude.Nothing,
      statisticsResource = Prelude.Nothing,
      baseliningJobName = Prelude.Nothing
    }

-- | The baseline constraint file in Amazon S3 that the current monitoring
-- job should validated against.
monitoringBaselineConfig_constraintsResource :: Lens.Lens' MonitoringBaselineConfig (Prelude.Maybe MonitoringConstraintsResource)
monitoringBaselineConfig_constraintsResource = Lens.lens (\MonitoringBaselineConfig' {constraintsResource} -> constraintsResource) (\s@MonitoringBaselineConfig' {} a -> s {constraintsResource = a} :: MonitoringBaselineConfig)

-- | The baseline statistics file in Amazon S3 that the current monitoring
-- job should be validated against.
monitoringBaselineConfig_statisticsResource :: Lens.Lens' MonitoringBaselineConfig (Prelude.Maybe MonitoringStatisticsResource)
monitoringBaselineConfig_statisticsResource = Lens.lens (\MonitoringBaselineConfig' {statisticsResource} -> statisticsResource) (\s@MonitoringBaselineConfig' {} a -> s {statisticsResource = a} :: MonitoringBaselineConfig)

-- | The name of the job that performs baselining for the monitoring job.
monitoringBaselineConfig_baseliningJobName :: Lens.Lens' MonitoringBaselineConfig (Prelude.Maybe Prelude.Text)
monitoringBaselineConfig_baseliningJobName = Lens.lens (\MonitoringBaselineConfig' {baseliningJobName} -> baseliningJobName) (\s@MonitoringBaselineConfig' {} a -> s {baseliningJobName = a} :: MonitoringBaselineConfig)

instance Core.FromJSON MonitoringBaselineConfig where
  parseJSON =
    Core.withObject
      "MonitoringBaselineConfig"
      ( \x ->
          MonitoringBaselineConfig'
            Prelude.<$> (x Core..:? "ConstraintsResource")
            Prelude.<*> (x Core..:? "StatisticsResource")
            Prelude.<*> (x Core..:? "BaseliningJobName")
      )

instance Prelude.Hashable MonitoringBaselineConfig

instance Prelude.NFData MonitoringBaselineConfig

instance Core.ToJSON MonitoringBaselineConfig where
  toJSON MonitoringBaselineConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ConstraintsResource" Core..=)
              Prelude.<$> constraintsResource,
            ("StatisticsResource" Core..=)
              Prelude.<$> statisticsResource,
            ("BaseliningJobName" Core..=)
              Prelude.<$> baseliningJobName
          ]
      )