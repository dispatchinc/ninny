# frozen_string_literal: true

RSpec.describe '`ninny setup` command', type: :cli do
  it 'executes `ninny help setup` command successfully' do
    output = `ninny help setup`
    expected_output = <<~OUT
      Usage:
        ninny setup

      Options:
        -h, [--help], [--no-help]  # Display usage information
        -t, [--token=TOKEN]        # The GitLab token to add to the ~/.ninny.yml file

      Interactively setup configuration
    OUT

    expect(output).to eq(expected_output)
  end
end
