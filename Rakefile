image = "autogrow/rpi-redis"

task :build do
  system "docker build -t #{image} ."
end

task :push do
  system "docker push #{image}"
end
