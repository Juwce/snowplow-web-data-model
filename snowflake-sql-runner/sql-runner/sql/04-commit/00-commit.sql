-- Copyright (c) 2018 Snowplow Analytics Ltd. All rights reserved.
--
-- This program is licensed to you under the Apache License Version 2.0,
-- and you may not use this file except in compliance with the Apache License Version 2.0.
-- You may obtain a copy of the Apache License Version 2.0 at http://www.apache.org/licenses/LICENSE-2.0.
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the Apache License Version 2.0 is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the Apache License Version 2.0 for the specific language governing permissions and limitations there under.
--
-- Version:     0.1.0
--
-- Authors:     Christophe Bogaert, Colm O Griobhtha
-- Copyright:   Copyright (c) 2018 Snowplow Analytics Ltd
-- License:     Apache License Version 2.0

BEGIN;

  DROP TABLE IF EXISTS {{.output_schema}}.page_views;
  ALTER TABLE {{.output_schema}}.page_views_tmp RENAME TO {{.output_schema}}.page_views;

COMMIT;

BEGIN;

  DROP TABLE IF EXISTS {{.output_schema}}.sessions;
  ALTER TABLE {{.output_schema}}.sessions_tmp RENAME TO {{.output_schema}}.sessions;

COMMIT;

BEGIN;

  DROP TABLE IF EXISTS {{.output_schema}}.users;
  ALTER TABLE {{.output_schema}}.users_tmp RENAME TO {{.output_schema}}.users;

COMMIT;

DROP TABLE IF EXISTS {{.scratch_schema}}.web_events;
DROP TABLE IF EXISTS {{.scratch_schema}}.web_events_time;
DROP TABLE IF EXISTS {{.scratch_schema}}.web_events_scroll_depth;
DROP TABLE IF EXISTS {{.scratch_schema}}.web_timing_context;
