{-# LANGUAGE DataKinds                   #-}
{-# LANGUAGE DeriveGeneric               #-}
{-# LANGUAGE FlexibleInstances           #-}
{-# LANGUAGE GeneralizedNewtypeDeriving  #-}
{-# LANGUAGE LambdaCase                  #-}
{-# LANGUAGE NoImplicitPrelude           #-}
{-# LANGUAGE OverloadedStrings           #-}
{-# LANGUAGE RecordWildCards             #-}
{-# LANGUAGE TypeFamilies                #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.SWF.RespondActivityTaskCanceled
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- | Used by workers to tell the service that the 'ActivityTask' identified by the 'taskToken' was successfully canceled. Additional 'details' can be optionally provided
-- using the 'details' argument.
--
-- These 'details' (if provided) appear in the 'ActivityTaskCanceled' event added
-- to the workflow history.
--
-- Only use this operation if the 'canceled' flag of a 'RecordActivityTaskHeartbeat'
-- request returns 'true' and if the activity can be safely undone or abandoned. A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to
-- 'RespondActivityTaskCompleted', RespondActivityTaskCanceled, 'RespondActivityTaskFailed', or the task has <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types timed out>.
--
-- Access Control
--
-- You can use IAM policies to control this action's access to Amazon SWF
-- resources as follows:
--
-- Use a 'Resource' element with the domain name to limit the action to only
-- specified domains. Use an 'Action' element to allow or deny permission to call
-- this action. You cannot use an IAM policy to constrain this action's
-- parameters.  If the caller does not have sufficient permissions to invoke the
-- action, or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute's cause parameter will be set to
-- OPERATION_NOT_PERMITTED. For details and example IAM policies, see <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAMto Manage Access to Amazon SWF Workflows>.
--
-- <http://docs.aws.amazon.com/amazonswf/latest/apireference/API_RespondActivityTaskCanceled.html>
module Network.AWS.SWF.RespondActivityTaskCanceled
    (
    -- * Request
      RespondActivityTaskCanceled
    -- ** Request constructor
    , respondActivityTaskCanceled
    -- ** Request lenses
    , ratc1Details
    , ratc1TaskToken

    -- * Response
    , RespondActivityTaskCanceledResponse
    -- ** Response constructor
    , respondActivityTaskCanceledResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.JSON
import Network.AWS.SWF.Types
import qualified GHC.Exts

data RespondActivityTaskCanceled = RespondActivityTaskCanceled
    { _ratc1Details   :: Maybe Text
    , _ratc1TaskToken :: Text
    } deriving (Eq, Ord, Show)

-- | 'RespondActivityTaskCanceled' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'ratc1Details' @::@ 'Maybe' 'Text'
--
-- * 'ratc1TaskToken' @::@ 'Text'
--
respondActivityTaskCanceled :: Text -- ^ 'ratc1TaskToken'
                            -> RespondActivityTaskCanceled
respondActivityTaskCanceled p1 = RespondActivityTaskCanceled
    { _ratc1TaskToken = p1
    , _ratc1Details   = Nothing
    }

-- | /Optional./ Information about the cancellation.
ratc1Details :: Lens' RespondActivityTaskCanceled (Maybe Text)
ratc1Details = lens _ratc1Details (\s a -> s { _ratc1Details = a })

-- | The 'taskToken' of the 'ActivityTask'.
--
-- 'taskToken' is generated by the service and should be treated as an opaque
-- value. If the task is passed to another process, its 'taskToken' must also be
-- passed. This enables it to provide its progress and respond with results.
ratc1TaskToken :: Lens' RespondActivityTaskCanceled Text
ratc1TaskToken = lens _ratc1TaskToken (\s a -> s { _ratc1TaskToken = a })

data RespondActivityTaskCanceledResponse = RespondActivityTaskCanceledResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'RespondActivityTaskCanceledResponse' constructor.
respondActivityTaskCanceledResponse :: RespondActivityTaskCanceledResponse
respondActivityTaskCanceledResponse = RespondActivityTaskCanceledResponse

instance ToPath RespondActivityTaskCanceled where
    toPath = const "/"

instance ToQuery RespondActivityTaskCanceled where
    toQuery = const mempty

instance ToHeaders RespondActivityTaskCanceled

instance ToJSON RespondActivityTaskCanceled where
    toJSON RespondActivityTaskCanceled{..} = object
        [ "taskToken" .= _ratc1TaskToken
        , "details"   .= _ratc1Details
        ]

instance AWSRequest RespondActivityTaskCanceled where
    type Sv RespondActivityTaskCanceled = SWF
    type Rs RespondActivityTaskCanceled = RespondActivityTaskCanceledResponse

    request  = post "RespondActivityTaskCanceled"
    response = nullResponse RespondActivityTaskCanceledResponse