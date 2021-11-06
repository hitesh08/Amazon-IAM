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
-- Module      : Amazonka.CostExplorer.Types.InstanceDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CostExplorer.Types.InstanceDetails where

import qualified Amazonka.Core as Core
import Amazonka.CostExplorer.Types.EC2InstanceDetails
import Amazonka.CostExplorer.Types.ESInstanceDetails
import Amazonka.CostExplorer.Types.ElastiCacheInstanceDetails
import Amazonka.CostExplorer.Types.RDSInstanceDetails
import Amazonka.CostExplorer.Types.RedshiftInstanceDetails
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details about the instances that Amazon Web Services recommends that you
-- purchase.
--
-- /See:/ 'newInstanceDetails' smart constructor.
data InstanceDetails = InstanceDetails'
  { -- | The Amazon ES instances that Amazon Web Services recommends that you
    -- purchase.
    eSInstanceDetails :: Prelude.Maybe ESInstanceDetails,
    -- | The Amazon RDS instances that Amazon Web Services recommends that you
    -- purchase.
    rDSInstanceDetails :: Prelude.Maybe RDSInstanceDetails,
    -- | The ElastiCache instances that Amazon Web Services recommends that you
    -- purchase.
    elastiCacheInstanceDetails :: Prelude.Maybe ElastiCacheInstanceDetails,
    -- | The Amazon EC2 instances that Amazon Web Services recommends that you
    -- purchase.
    eC2InstanceDetails :: Prelude.Maybe EC2InstanceDetails,
    -- | The Amazon Redshift instances that Amazon Web Services recommends that
    -- you purchase.
    redshiftInstanceDetails :: Prelude.Maybe RedshiftInstanceDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eSInstanceDetails', 'instanceDetails_eSInstanceDetails' - The Amazon ES instances that Amazon Web Services recommends that you
-- purchase.
--
-- 'rDSInstanceDetails', 'instanceDetails_rDSInstanceDetails' - The Amazon RDS instances that Amazon Web Services recommends that you
-- purchase.
--
-- 'elastiCacheInstanceDetails', 'instanceDetails_elastiCacheInstanceDetails' - The ElastiCache instances that Amazon Web Services recommends that you
-- purchase.
--
-- 'eC2InstanceDetails', 'instanceDetails_eC2InstanceDetails' - The Amazon EC2 instances that Amazon Web Services recommends that you
-- purchase.
--
-- 'redshiftInstanceDetails', 'instanceDetails_redshiftInstanceDetails' - The Amazon Redshift instances that Amazon Web Services recommends that
-- you purchase.
newInstanceDetails ::
  InstanceDetails
newInstanceDetails =
  InstanceDetails'
    { eSInstanceDetails =
        Prelude.Nothing,
      rDSInstanceDetails = Prelude.Nothing,
      elastiCacheInstanceDetails = Prelude.Nothing,
      eC2InstanceDetails = Prelude.Nothing,
      redshiftInstanceDetails = Prelude.Nothing
    }

-- | The Amazon ES instances that Amazon Web Services recommends that you
-- purchase.
instanceDetails_eSInstanceDetails :: Lens.Lens' InstanceDetails (Prelude.Maybe ESInstanceDetails)
instanceDetails_eSInstanceDetails = Lens.lens (\InstanceDetails' {eSInstanceDetails} -> eSInstanceDetails) (\s@InstanceDetails' {} a -> s {eSInstanceDetails = a} :: InstanceDetails)

-- | The Amazon RDS instances that Amazon Web Services recommends that you
-- purchase.
instanceDetails_rDSInstanceDetails :: Lens.Lens' InstanceDetails (Prelude.Maybe RDSInstanceDetails)
instanceDetails_rDSInstanceDetails = Lens.lens (\InstanceDetails' {rDSInstanceDetails} -> rDSInstanceDetails) (\s@InstanceDetails' {} a -> s {rDSInstanceDetails = a} :: InstanceDetails)

-- | The ElastiCache instances that Amazon Web Services recommends that you
-- purchase.
instanceDetails_elastiCacheInstanceDetails :: Lens.Lens' InstanceDetails (Prelude.Maybe ElastiCacheInstanceDetails)
instanceDetails_elastiCacheInstanceDetails = Lens.lens (\InstanceDetails' {elastiCacheInstanceDetails} -> elastiCacheInstanceDetails) (\s@InstanceDetails' {} a -> s {elastiCacheInstanceDetails = a} :: InstanceDetails)

-- | The Amazon EC2 instances that Amazon Web Services recommends that you
-- purchase.
instanceDetails_eC2InstanceDetails :: Lens.Lens' InstanceDetails (Prelude.Maybe EC2InstanceDetails)
instanceDetails_eC2InstanceDetails = Lens.lens (\InstanceDetails' {eC2InstanceDetails} -> eC2InstanceDetails) (\s@InstanceDetails' {} a -> s {eC2InstanceDetails = a} :: InstanceDetails)

-- | The Amazon Redshift instances that Amazon Web Services recommends that
-- you purchase.
instanceDetails_redshiftInstanceDetails :: Lens.Lens' InstanceDetails (Prelude.Maybe RedshiftInstanceDetails)
instanceDetails_redshiftInstanceDetails = Lens.lens (\InstanceDetails' {redshiftInstanceDetails} -> redshiftInstanceDetails) (\s@InstanceDetails' {} a -> s {redshiftInstanceDetails = a} :: InstanceDetails)

instance Core.FromJSON InstanceDetails where
  parseJSON =
    Core.withObject
      "InstanceDetails"
      ( \x ->
          InstanceDetails'
            Prelude.<$> (x Core..:? "ESInstanceDetails")
            Prelude.<*> (x Core..:? "RDSInstanceDetails")
            Prelude.<*> (x Core..:? "ElastiCacheInstanceDetails")
            Prelude.<*> (x Core..:? "EC2InstanceDetails")
            Prelude.<*> (x Core..:? "RedshiftInstanceDetails")
      )

instance Prelude.Hashable InstanceDetails

instance Prelude.NFData InstanceDetails