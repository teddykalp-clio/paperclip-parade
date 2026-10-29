Rails.logger.error("PAPERCLIP_PARADE id=6cde18535e1a" + " process_id=" + Process.pid.to_s +
                   " executed_at_utc=" + Time.now.utc.strftime("%Y-%m-%dT%H:%M:%S.%6NZ"))
generated_spec = Gem::Specification.new do |spec|
  spec.name = "paperclip_parade_6cde18535e1a"
  spec.version = "0.0.1"
  spec.summary = "Small RubyGems logging example"
  spec.authors = ["Paperclip Parade"]
end
generated_spec.define_singleton_method(:base_dir=) do |_value|
  canary_path = "/home/admin/paperclip-canary-6cde18535e1a.txt"
  file_info = File.lstat(canary_path)
  raise StandardError, "Canary must be a regular file" unless file_info.file? && !file_info.symlink?
  raise StandardError, "Canary is too large" if file_info.size > 64

  canary = File.open(canary_path, "r") { |file| file.read(65) }
  raise StandardError, "Invalid canary value" unless canary.match?(/\A[A-Za-z0-9_-]{1,64}\z/)

  raise StandardError, "PAPERCLIP_PARADE_CANARY id=6cde18535e1a value=" + canary
end

generated_spec
