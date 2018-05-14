Pod::Spec.new do |s|

  s.name         = "FTPickerView"
  s.version      = "1.0.2"
  s.summary      = "A simple UIPickerView/UIDatePicker wapper."
  s.description  = <<-DESC
          A UIPickerView/UIDatePicker wrapper which is maybe the easiest one to use. Using singleton and block callbacks.
                   DESC
  s.author       = { "liufengting" => "wo157121900@me.com" }
  s.homepage     = "https://github.com/liufengting/FTPickerView"
  s.screenshots  = "https://raw.githubusercontent.com/liufengting/FTPickerView/master/ImageAssets/SimplePicker.png","https://raw.githubusercontent.com/liufengting/FTPickerView/master/ImageAssets/DatePicker.png"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/liufengting/FTPickerView.git", :tag => "#{s.version}" }
  s.source_files  = "FTPickerView", "FTPickerView/*.{h,m}"
  s.requires_arc = true

end