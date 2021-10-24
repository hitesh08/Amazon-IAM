{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.EventCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.EventCode
  ( EventCode
      ( ..,
        EventCode_FLEET_ACTIVATION_FAILED,
        EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES,
        EventCode_FLEET_BINARY_DOWNLOAD_FAILED,
        EventCode_FLEET_CREATED,
        EventCode_FLEET_CREATION_EXTRACTING_BUILD,
        EventCode_FLEET_CREATION_RUNNING_INSTALLER,
        EventCode_FLEET_CREATION_VALIDATING_RUNTIME_CONFIG,
        EventCode_FLEET_DELETED,
        EventCode_FLEET_INITIALIZATION_FAILED,
        EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED,
        EventCode_FLEET_SCALING_EVENT,
        EventCode_FLEET_STATE_ACTIVATING,
        EventCode_FLEET_STATE_ACTIVE,
        EventCode_FLEET_STATE_BUILDING,
        EventCode_FLEET_STATE_DOWNLOADING,
        EventCode_FLEET_STATE_ERROR,
        EventCode_FLEET_STATE_VALIDATING,
        EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE,
        EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND,
        EventCode_FLEET_VALIDATION_TIMED_OUT,
        EventCode_FLEET_VPC_PEERING_DELETED,
        EventCode_FLEET_VPC_PEERING_FAILED,
        EventCode_FLEET_VPC_PEERING_SUCCEEDED,
        EventCode_GAME_SESSION_ACTIVATION_TIMEOUT,
        EventCode_GENERIC_EVENT,
        EventCode_INSTANCE_INTERRUPTED,
        EventCode_SERVER_PROCESS_CRASHED,
        EventCode_SERVER_PROCESS_FORCE_TERMINATED,
        EventCode_SERVER_PROCESS_INVALID_PATH,
        EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT,
        EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT,
        EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT,
        EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype EventCode = EventCode'
  { fromEventCode ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern EventCode_FLEET_ACTIVATION_FAILED :: EventCode
pattern EventCode_FLEET_ACTIVATION_FAILED = EventCode' "FLEET_ACTIVATION_FAILED"

pattern EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES :: EventCode
pattern EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES = EventCode' "FLEET_ACTIVATION_FAILED_NO_INSTANCES"

pattern EventCode_FLEET_BINARY_DOWNLOAD_FAILED :: EventCode
pattern EventCode_FLEET_BINARY_DOWNLOAD_FAILED = EventCode' "FLEET_BINARY_DOWNLOAD_FAILED"

pattern EventCode_FLEET_CREATED :: EventCode
pattern EventCode_FLEET_CREATED = EventCode' "FLEET_CREATED"

pattern EventCode_FLEET_CREATION_EXTRACTING_BUILD :: EventCode
pattern EventCode_FLEET_CREATION_EXTRACTING_BUILD = EventCode' "FLEET_CREATION_EXTRACTING_BUILD"

pattern EventCode_FLEET_CREATION_RUNNING_INSTALLER :: EventCode
pattern EventCode_FLEET_CREATION_RUNNING_INSTALLER = EventCode' "FLEET_CREATION_RUNNING_INSTALLER"

pattern EventCode_FLEET_CREATION_VALIDATING_RUNTIME_CONFIG :: EventCode
pattern EventCode_FLEET_CREATION_VALIDATING_RUNTIME_CONFIG = EventCode' "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG"

pattern EventCode_FLEET_DELETED :: EventCode
pattern EventCode_FLEET_DELETED = EventCode' "FLEET_DELETED"

pattern EventCode_FLEET_INITIALIZATION_FAILED :: EventCode
pattern EventCode_FLEET_INITIALIZATION_FAILED = EventCode' "FLEET_INITIALIZATION_FAILED"

pattern EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED :: EventCode
pattern EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED = EventCode' "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED"

pattern EventCode_FLEET_SCALING_EVENT :: EventCode
pattern EventCode_FLEET_SCALING_EVENT = EventCode' "FLEET_SCALING_EVENT"

pattern EventCode_FLEET_STATE_ACTIVATING :: EventCode
pattern EventCode_FLEET_STATE_ACTIVATING = EventCode' "FLEET_STATE_ACTIVATING"

pattern EventCode_FLEET_STATE_ACTIVE :: EventCode
pattern EventCode_FLEET_STATE_ACTIVE = EventCode' "FLEET_STATE_ACTIVE"

pattern EventCode_FLEET_STATE_BUILDING :: EventCode
pattern EventCode_FLEET_STATE_BUILDING = EventCode' "FLEET_STATE_BUILDING"

pattern EventCode_FLEET_STATE_DOWNLOADING :: EventCode
pattern EventCode_FLEET_STATE_DOWNLOADING = EventCode' "FLEET_STATE_DOWNLOADING"

pattern EventCode_FLEET_STATE_ERROR :: EventCode
pattern EventCode_FLEET_STATE_ERROR = EventCode' "FLEET_STATE_ERROR"

pattern EventCode_FLEET_STATE_VALIDATING :: EventCode
pattern EventCode_FLEET_STATE_VALIDATING = EventCode' "FLEET_STATE_VALIDATING"

pattern EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE :: EventCode
pattern EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE = EventCode' "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE"

pattern EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND :: EventCode
pattern EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND = EventCode' "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND"

pattern EventCode_FLEET_VALIDATION_TIMED_OUT :: EventCode
pattern EventCode_FLEET_VALIDATION_TIMED_OUT = EventCode' "FLEET_VALIDATION_TIMED_OUT"

pattern EventCode_FLEET_VPC_PEERING_DELETED :: EventCode
pattern EventCode_FLEET_VPC_PEERING_DELETED = EventCode' "FLEET_VPC_PEERING_DELETED"

pattern EventCode_FLEET_VPC_PEERING_FAILED :: EventCode
pattern EventCode_FLEET_VPC_PEERING_FAILED = EventCode' "FLEET_VPC_PEERING_FAILED"

pattern EventCode_FLEET_VPC_PEERING_SUCCEEDED :: EventCode
pattern EventCode_FLEET_VPC_PEERING_SUCCEEDED = EventCode' "FLEET_VPC_PEERING_SUCCEEDED"

pattern EventCode_GAME_SESSION_ACTIVATION_TIMEOUT :: EventCode
pattern EventCode_GAME_SESSION_ACTIVATION_TIMEOUT = EventCode' "GAME_SESSION_ACTIVATION_TIMEOUT"

pattern EventCode_GENERIC_EVENT :: EventCode
pattern EventCode_GENERIC_EVENT = EventCode' "GENERIC_EVENT"

pattern EventCode_INSTANCE_INTERRUPTED :: EventCode
pattern EventCode_INSTANCE_INTERRUPTED = EventCode' "INSTANCE_INTERRUPTED"

pattern EventCode_SERVER_PROCESS_CRASHED :: EventCode
pattern EventCode_SERVER_PROCESS_CRASHED = EventCode' "SERVER_PROCESS_CRASHED"

pattern EventCode_SERVER_PROCESS_FORCE_TERMINATED :: EventCode
pattern EventCode_SERVER_PROCESS_FORCE_TERMINATED = EventCode' "SERVER_PROCESS_FORCE_TERMINATED"

pattern EventCode_SERVER_PROCESS_INVALID_PATH :: EventCode
pattern EventCode_SERVER_PROCESS_INVALID_PATH = EventCode' "SERVER_PROCESS_INVALID_PATH"

pattern EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT :: EventCode
pattern EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT = EventCode' "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT"

pattern EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT :: EventCode
pattern EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT = EventCode' "SERVER_PROCESS_PROCESS_READY_TIMEOUT"

pattern EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT :: EventCode
pattern EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT = EventCode' "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT"

pattern EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY :: EventCode
pattern EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY = EventCode' "SERVER_PROCESS_TERMINATED_UNHEALTHY"

{-# COMPLETE
  EventCode_FLEET_ACTIVATION_FAILED,
  EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES,
  EventCode_FLEET_BINARY_DOWNLOAD_FAILED,
  EventCode_FLEET_CREATED,
  EventCode_FLEET_CREATION_EXTRACTING_BUILD,
  EventCode_FLEET_CREATION_RUNNING_INSTALLER,
  EventCode_FLEET_CREATION_VALIDATING_RUNTIME_CONFIG,
  EventCode_FLEET_DELETED,
  EventCode_FLEET_INITIALIZATION_FAILED,
  EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED,
  EventCode_FLEET_SCALING_EVENT,
  EventCode_FLEET_STATE_ACTIVATING,
  EventCode_FLEET_STATE_ACTIVE,
  EventCode_FLEET_STATE_BUILDING,
  EventCode_FLEET_STATE_DOWNLOADING,
  EventCode_FLEET_STATE_ERROR,
  EventCode_FLEET_STATE_VALIDATING,
  EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE,
  EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND,
  EventCode_FLEET_VALIDATION_TIMED_OUT,
  EventCode_FLEET_VPC_PEERING_DELETED,
  EventCode_FLEET_VPC_PEERING_FAILED,
  EventCode_FLEET_VPC_PEERING_SUCCEEDED,
  EventCode_GAME_SESSION_ACTIVATION_TIMEOUT,
  EventCode_GENERIC_EVENT,
  EventCode_INSTANCE_INTERRUPTED,
  EventCode_SERVER_PROCESS_CRASHED,
  EventCode_SERVER_PROCESS_FORCE_TERMINATED,
  EventCode_SERVER_PROCESS_INVALID_PATH,
  EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT,
  EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT,
  EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT,
  EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY,
  EventCode'
  #-}