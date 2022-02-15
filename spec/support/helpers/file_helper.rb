# frozen_string_literal: true

module Helpers
    module FileHelper
      extend self
  
      def different_generic_image
        Rack::Test::UploadedFile.new(different_generic_image_path)
      end
  
      def pdf_image
        Rack::Test::UploadedFile.new(pdf_image_path)
      end
  
      def generic_image
        Rack::Test::UploadedFile.new(generic_image_path)
      end
  
      def generic_pdf
        Rack::Test::UploadedFile.new(generic_pdf_path)
      end
  
      def generic_word
        Rack::Test::UploadedFile.new(generic_word_path)
      end
  
      def generic_excel
        Rack::Test::UploadedFile.new(generic_excel_path)
      end
  
      private
  
      def different_generic_image_path
        Rails.root.join("spec/support/images/other_image.png")
      end
  
      def pdf_image_path
        Rails.root.join("spec/support/images/sample_resume.pdf")
      end
  
      def generic_image_path
        Rails.root.join("spec/support/images/image.png")
      end
  
      def generic_pdf_path
        Rails.root.join("spec/support/documents/file.pdf")
      end
  
      def generic_word_path
        Rails.root.join("spec/support/documents/file.docx")
      end
  
      def generic_excel_path
        Rails.root.join("spec/support/documents/file.xlsx")
      end
    end
  
    module FileReader
      extend self
      def read_json(file_name:, folder:, binding:, file_path: "public/templates")
        JSON.parse(ERB.new(
          File.read(
            Rails.root.join("#{file_path}/#{folder}/#{file_name}")
          )
        ).result(binding))
      end
  
      def read_xml(file_name:, folder:, binding:, file_path: "public/templates")
        ERB.new(
          File.read(
            Rails.root.join("#{file_path}/#{folder}/#{file_name}")
          )
        ).result(binding)
      end
    end
  end