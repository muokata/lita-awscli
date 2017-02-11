module Lita
  module Handlers
    class AwsCli < Handler

      # AwsCli handler
      
      route(/^aws\s(\w+)/, :aws, help: { "aws " => "aws `prod`|`develop`|`build` returns running EC2 instances on those accounts/" })

      def aws(response)

      	aws_profile = response.matches[0][0]
      	response.reply "Querying AWS For all EC2 Instances on profile #{aws_profile}"
  	text = `aws --profile #{aws_profile} --region us-east-1 ec2 describe-instances --query "Reservations[].Instances[].{ ID:InstanceId, TYPE:InstanceType, ZONE:Placement.AvailabilityZone, KEY:KeyName, EC2Hostname:PublicDnsName, NAME:Tags[?Key=='Name'].Value | [0], ROLE:Tags[?Key=='Role'].Value | [0], PRIVATEIP:PrivateIpAddress STATE:State.Name}" --output table`
	# test = "account id was: #{aws_profile}"
  	response.reply("```#{text}```")

      end
      Lita.register_handler(self)
    end
  end
end
