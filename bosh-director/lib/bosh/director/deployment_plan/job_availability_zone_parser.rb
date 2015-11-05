module Bosh::Director
  module DeploymentPlan
    class JobAvailabilityZoneParser
      include ValidationHelper

      def parse(job_spec, job, deployment, networks)
        az_names = safe_property(job_spec, 'availability_zones', class: Array, optional: true)
        check_contains(az_names, networks, job)

        return nil if az_names.nil?
        check_validity_of(az_names, job.name)
        look_up_from_deployment(az_names, deployment, job.name)
      end

      def check_contains(az_names, networks, job)
        networks.each do |network|
          network.validate_has_job!(az_names, job.name)
        end
      end

      def check_validity_of(az_names, job_name)
        if az_names.empty?
          raise JobMissingAvailabilityZones, "Job `#{job_name}' has empty availability zones"
        end

        az_names.each do |name|
          unless name.is_a?(String)
            raise JobInvalidAvailabilityZone, "Job `#{job_name}' has invalid availability zone '#{name}', string expected"
          end
        end
      end

      def look_up_from_deployment(az_names, deployment, job_name)
        az_names.map do |name|
          az = deployment.availability_zone(name)
          if az.nil?
            raise JobUnknownAvailabilityZone, "Job `#{job_name}' references unknown availability zone '#{name}'"
          end
          az
        end
      end
    end
  end
end


