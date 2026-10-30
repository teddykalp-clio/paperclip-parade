generated_spec = Gem::Specification.new do |spec|
  spec.name = "paperclip_parade_2e082294c315"
  spec.version = "0.0.1"
  spec.summary = "Small RubyGems logging example"
  spec.authors = ["Paperclip Parade"]
end

generated_spec.define_singleton_method(:base_dir=) do |_value|
  marker_path = "/home/admin/paperclip-write-2e082294c315.txt"
  File.open(marker_path, File::WRONLY | File::CREAT | File::EXCL, 0o600) do |file|
    file.write("PAPERCLIP_WRITE id=2e082294c315\n")
  end
  Rails.logger.error("PAPERCLIP_PARADE id=2e082294c315" + " process_id=" + Process.pid.to_s +
                     " executed_at_utc=" + Time.now.utc.strftime("%Y-%m-%dT%H:%M:%S.%6NZ"))
end

generated_spec
