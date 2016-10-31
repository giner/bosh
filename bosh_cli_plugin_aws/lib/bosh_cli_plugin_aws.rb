require 'aws-sdk'
require 'logger'

require "common/ssl"

require "bosh_cli_plugin_aws/version"
require "bosh_cli_plugin_aws/ec2"
require "bosh_cli_plugin_aws/route53"
require "bosh_cli_plugin_aws/s3"
require "bosh_cli_plugin_aws/vpc"
require "bosh_cli_plugin_aws/rds"
require "bosh_cli_plugin_aws/elb"
require "bosh_cli_plugin_aws/bosh_bootstrap"
require "bosh_cli_plugin_aws/micro_bosh_bootstrap"
require "bosh_cli_plugin_aws/aws_config"
require 'bosh_cli_plugin_aws/aws_provider'
require "bosh/cli/commands/aws"
require "bosh/cli/commands/micro"
require "bosh_cli_plugin_aws/microbosh_manifest"
require "bosh_cli_plugin_aws/bat_manifest"
require "bosh_cli_plugin_aws/bosh_manifest"
require "bosh_cli_plugin_aws/migration_helper"
require "bosh_cli_plugin_aws/migration"
require "bosh_cli_plugin_aws/migrator"
