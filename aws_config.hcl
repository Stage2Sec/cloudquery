// Configuration AutoGenerated by CloudQuery CLI
cloudquery {
  plugin_directory = "./.cq/providers"

  provider "aws" {
    source  = ""
    version = "v0.5.8"
  }

  connection {
    dsn = "postgres://postgres:Cloudquery!@localhost:5432/postgres?sslmode=disable"
  }
}

// All Provider Configurations

provider "aws" {
  configuration {
    // Optional. if you want to assume role to multiple account and fetch data from them
    //accounts "<YOUR ID>" {
    // Optional. Role ARN we want to assume when accessing this account
    // role_arn = <YOUR_ROLE_ARN>
    // }
    // Optional. by default assumes all regions
    // regions = ["us-east-1", "us-west-2"]
    // Optional. Enable AWS SDK debug logging.
    aws_debug = false
    // The maximum number of times that a request will be retried for failures. Defaults to 5 retry attempts.
    max_retries = 10
    // The maximum back off delay between attempts. The backoff delays exponentially with a jitter based on the number of attempts. Defaults to 60 seconds.
    // max_backoff = 30 
  }

  resources = [
    "accessanalyzer.analyzers",
    "apigateway.api_keys",
    "apigateway.client_certificates",
    "apigateway.domain_names",
    "apigateway.rest_apis",
    "apigateway.usage_plans",
    "apigateway.vpc_links",
    "apigatewayv2.apis",
    "apigatewayv2.domain_names",
    "apigatewayv2.vpc_links",
    "autoscaling.launch_configurations",
    "cloudfront.cache_policies",
    "cloudfront.distributions",
    "cloudtrail.trails",
    "cloudwatch.alarms",
    "cloudwatchlogs.filters",
    "cognito.identity_pools",
    "cognito.user_pools",
    "config.configuration_recorders",
    "config.conformance_packs",
    "directconnect.connections",
    "directconnect.gateways",
    "directconnect.lags",
    "directconnect.virtual_gateways",
    "directconnect.virtual_interfaces",
    "ec2.byoip_cidrs",
    "ec2.customer_gateways",
    "ec2.ebs_volumes",
    "ec2.flow_logs",
    "ec2.images",
    "ec2.instances",
    "ec2.internet_gateways",
    "ec2.nat_gateways",
    "ec2.network_acls",
    "ec2.regional_config",
    "ec2.route_tables",
    "ec2.security_groups",
    "ec2.subnets",
    "ec2.transit_gateways",
    "ec2.vpc_endpoints",
    "ec2.vpc_peering_connections",
    "ec2.vpcs",
    "ec2.vpn_gateways",
    "ecr.repositories",
    "ecs.clusters",
    "efs.filesystems",
    "eks.clusters",
    "elasticbeanstalk.environments",
    "elasticsearch.domains",
    "elbv1.load_balancers",
    "elbv2.load_balancers",
    "elbv2.target_groups",
    "emr.clusters",
    "fsx.backups",
    "iam.accounts",
    "iam.groups",
    "iam.openid_connect_identity_providers",
    "iam.password_policies",
    "iam.policies",
    "iam.roles",
    "iam.saml_identity_providers",
    "iam.server_certificates",
    "iam.users",
    "iam.virtual_mfa_devices",
    "kms.keys",
    "lambda.functions",
    "lambda.layers",
    "mq.brokers",
    "organizations.accounts",
    "rds.certificates",
    "rds.clusters",
    "rds.db_subnet_groups",
    "rds.instances",
    "redshift.clusters",
    "redshift.subnet_groups",
    "route53.health_checks",
    "route53.hosted_zones",
    "route53.reusable_delegation_sets",
    "route53.traffic_policies",
    "s3.buckets",
    "sns.subscriptions",
    "sns.topics",
    "waf.rule_groups",
    "waf.rules",
    "waf.subscribed_rule_groups",
    "waf.web_acls",
    "wafv2.managed_rule_groups",
    "wafv2.rule_groups",
    "wafv2.web_acls",
  ]
}