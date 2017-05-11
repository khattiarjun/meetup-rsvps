aws emr create-cluster --auto-scaling-role EMR_AutoScaling_DefaultRole --termination-protected --applications Name=Hadoop Name=Hive Name=Spark Name=Zeppelin --ec2-attributes '{"InstanceProfile":"EMR_EC2_DefaultRole","SubnetId":"subnet-0c138d30","EmrManagedSlaveSecurityGroup":"sg-b4cc8ccb","EmrManagedMasterSecurityGroup":"sg-8dca8af2"}' --service-role EMR_DefaultRole --enable-debugging --release-label emr-5.5.0 --log-uri 's3n://aws-logs-599022145033-us-east-1/elasticmapreduce/' --name 'My cluster' --instance-groups '[{"InstanceCount":1,"InstanceGroupType":"MASTER","InstanceType":"m3.xlarge","Name":"Master - 1"},{"InstanceCount":2,"InstanceGroupType":"CORE","InstanceType":"m3.xlarge","Name":"Core - 2"}]' --scale-down-behavior TERMINATE_AT_INSTANCE_HOUR --region us-east-1