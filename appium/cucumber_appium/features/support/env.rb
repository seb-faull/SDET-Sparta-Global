require 'appium_lib'

def opts
  {
    caps: {
      platformName: :android,
      deviceName: "emulator-5554",
      app: "/Users/Tech-A25/Downloads/budgetwatch.apk"
    }
  }
end

Appium::Driver.new(opts, true)
