module SolidQueue
  class Job
    module Clearable
      extend ActiveSupport::Concern

      class_methods do
        def clear_finished_in_batches(batch_size: 500, finished_before: SolidQueue.clear_finished_jobs_after.ago)
          where.not(finished_at: nil).where(finished_at: ...finished_before).in_batches(of: batch_size).delete_all
        end
      end
    end
  end
end