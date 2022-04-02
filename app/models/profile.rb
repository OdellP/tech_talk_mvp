# frozen_string_literal: true

class Profile < ApplicationRecord
  DEVELOPER_TYPE = ['Front End', 'Back End', 'Full Stack', 'Dev Ops'].freeze
  PREFFERED_LANGUAGE = ['Ruby', 'Python', 'JavaScript', 'Java', 'C', 'C++', 'C#', 'Swift', 'Rust'].freeze

  belongs_to :user
end
