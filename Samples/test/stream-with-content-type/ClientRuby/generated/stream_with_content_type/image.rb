# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module StreamWithContentType
  #
  # Image
  #
  class Image

    #
    # Creates and initializes a new instance of the Image class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CowbellModerator] reference to the CowbellModerator
    attr_reader :client

    #
    # @param image An image stream.
    # @param image_content_type [ContentType] The content type of the image.
    # Possible values include: 'image/gif', 'image/jpeg', 'image/png', 'image/bmp',
    # 'image/tiff'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def a(image, image_content_type = nil, custom_headers = nil)
      response = a_async(image, image_content_type, custom_headers).value!
      nil
    end

    #
    # @param image An image stream.
    # @param image_content_type [ContentType] The content type of the image.
    # Possible values include: 'image/gif', 'image/jpeg', 'image/png', 'image/bmp',
    # 'image/tiff'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def a_with_http_info(image, image_content_type = nil, custom_headers = nil)
      a_async(image, image_content_type, custom_headers).value!
    end

    #
    # @param image An image stream.
    # @param image_content_type [ContentType] The content type of the image.
    # Possible values include: 'image/gif', 'image/jpeg', 'image/png', 'image/bmp',
    # 'image/tiff'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def a_async(image, image_content_type = nil, custom_headers = nil)
      fail ArgumentError, 'image is nil' if image.nil?


      request_headers = {}

      # Set Headers
      fail RuntimeError, 'Header Content-Type is forbidden to change'
      request_headers['Content-Type'] = image_content_type.to_s unless image_content_type.to_s.nil?

      request_headers['Content-Type'] = 'image/gif'

      # Serialize Request
      request_mapper = {
        required: true,
        serialized_name: 'Image',
        type: {
          name: 'Stream'
        }
      }
      request_content = @client.serialize(request_mapper,  image, 'image')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'ProcessImage/FunctionA'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

    #
    # @param image An image stream.
    # @param image_content_type [ContentType] The content type of the image.
    # Possible values include: 'image/gif', 'image/jpeg', 'image/png', 'image/bmp',
    # 'image/tiff'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def b(image, image_content_type, custom_headers = nil)
      response = b_async(image, image_content_type, custom_headers).value!
      nil
    end

    #
    # @param image An image stream.
    # @param image_content_type [ContentType] The content type of the image.
    # Possible values include: 'image/gif', 'image/jpeg', 'image/png', 'image/bmp',
    # 'image/tiff'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def b_with_http_info(image, image_content_type, custom_headers = nil)
      b_async(image, image_content_type, custom_headers).value!
    end

    #
    # @param image An image stream.
    # @param image_content_type [ContentType] The content type of the image.
    # Possible values include: 'image/gif', 'image/jpeg', 'image/png', 'image/bmp',
    # 'image/tiff'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def b_async(image, image_content_type, custom_headers = nil)
      fail ArgumentError, 'image is nil' if image.nil?
      fail ArgumentError, 'image_content_type is nil' if image_content_type.nil?


      request_headers = {}

      # Set Headers
      fail RuntimeError, 'Header Content-Type is forbidden to change'
      request_headers['Content-Type'] = image_content_type.to_s unless image_content_type.to_s.nil?

      request_headers['Content-Type'] = 'image/gif'

      # Serialize Request
      request_mapper = {
        required: true,
        serialized_name: 'Image',
        type: {
          name: 'Stream'
        }
      }
      request_content = @client.serialize(request_mapper,  image, 'image')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'ProcessImage/FunctionB'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

  end
end