RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('div.flash.error', text: message)
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    page.should have_selector('div.flash.success', text: message)
  end
end

RSpec::Matchers.define :have_title do |text|
  match do |page|
    page.should have_selector('title', text: text)
  end
end

RSpec::Matchers.define :have_profile_link do |user|
  match do |page|
    page.should have_link('Profile', href: user_path(user))
  end
end

RSpec::Matchers.define :have_signout_link do
  match do |page|
    page.should  have_link('Sign out', href: signout_path)
  end
end

RSpec::Matchers.define :have_signin_link do
  match do |page|
    page.should  have_link('Sign in', href: signin_path)
  end
end

RSpec::Matchers.define :have_heading do |heading|
  match do |page|
    page.should have_selector('h1', text: heading)
  end
end
