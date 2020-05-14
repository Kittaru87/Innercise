# Innercise

Help move your exercise inside.



* ...

**mvp**

- button for arm workouts
- press button
- navigate to an arms workout page
- a selection (10) youtube videos to display either as a scroll down list or a horizontal scroll list that you navigate one at a time.
- idea to have the API call in the workouts helper to keep the workouts controller skinny - the show method can the id of the button, push that into the api call then output a different playlist per button interaction.

Resources:
https://github.com/Fullscreen/yt#configuring-your-app

https://stackoverflow.com/questions/38466844/how-do-i-send-a-put-request-to-my-api-with-just-a-button-or-a-div

https://stackoverflow.com/questions/41111058/how-do-i-get-the-youtube-api-to-load-onclick 

https://stackoverflow.com/questions/42711959/play-youtube-video-on-

https://github.com/googleapis/google-api-ruby-client


https://developers.google.com/youtube/v3/docs/search/list#usage

https://stackoverflow.com/questions/18804904/retrieve-all-videos-from-youtube-playlist-using-youtube-v3-api

https://github.com/turbolinks/turbolinks#working-with-script-elements

https://stackoverflow.com/questions/30950529/jquery-ajax-call-to-be-triggered-onclick/30950571

https://blog.engineyard.com/keeping-your-rails-controllers-dry-with-services

https://github.com/googleapis/google-api-ruby-client/blob/master/generated/google/apis/youtube_v3/classes.rb

From Youtube_v3/classes.rb

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module YoutubeV3
      
      class SearchListsResponse
        include Google::Apis::Core::Hashable
      
        # Etag of this resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Serialized EventId of the request which produced this response.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # A list of results that match the search criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubeV3::SearchResult>]
        attr_accessor :items
      
        # Identifies what kind of resource this is. Value: the fixed string "youtube#
        # searchListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the next page in the result set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Paging details for lists of resources, including total number of items
        # available and number of resources returned in a single page.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::YoutubeV3::PageInfo]
        attr_accessor :page_info
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the previous page in the result set.
        # Corresponds to the JSON property `prevPageToken`
        # @return [String]
        attr_accessor :prev_page_token
      
        # 
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Stub token pagination template to suppress results.
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::YoutubeV3::TokenPagination]
        attr_accessor :token_pagination
      
        # The visitorId identifies the visitor.
        # Corresponds to the JSON property `visitorId`
        # @return [String]
        attr_accessor :visitor_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @event_id = args[:event_id] if args.key?(:event_id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @page_info = args[:page_info] if args.key?(:page_info)
          @prev_page_token = args[:prev_page_token] if args.key?(:prev_page_token)
          @region_code = args[:region_code] if args.key?(:region_code)
          @token_pagination = args[:token_pagination] if args.key?(:token_pagination)
          @visitor_id = args[:visitor_id] if args.key?(:visitor_id)
        end
      end
      
      # A search result contains information about a YouTube video, channel, or
      # playlist that matches the search parameters specified in an API request. While
      # a search result points to a uniquely identifiable resource, like a video, it
      # does not have its own persistent data.
      class SearchResult
        include Google::Apis::Core::Hashable
      
        # Etag of this resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A resource id is a generic reference that points to another YouTube resource.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::YoutubeV3::ResourceId]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "youtube#
        # searchResult".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Basic details about a search result, including title, description and
        # thumbnails of the item referenced by the search result.
        # Corresponds to the JSON property `snippet`
        # @return [Google::Apis::YoutubeV3::SearchResultSnippet]
        attr_accessor :snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @snippet = args[:snippet] if args.key?(:snippet)
        end
      end
      
      # Basic details about a search result, including title, description and
      # thumbnails of the item referenced by the search result.
      class SearchResultSnippet
        include Google::Apis::Core::Hashable
      
        # The value that YouTube uses to uniquely identify the channel that published
        # the resource that the search result identifies.
        # Corresponds to the JSON property `channelId`
        # @return [String]
        attr_accessor :channel_id
      
        # The title of the channel that published the resource that the search result
        # identifies.
        # Corresponds to the JSON property `channelTitle`
        # @return [String]
        attr_accessor :channel_title
      
        # A description of the search result.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # It indicates if the resource (video or channel) has upcoming/active live
        # broadcast content. Or it's "none" if there is not any upcoming/active live
        # broadcasts.
        # Corresponds to the JSON property `liveBroadcastContent`
        # @return [String]
        attr_accessor :live_broadcast_content
      
        # The creation date and time of the resource that the search result identifies.
        # The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
        # Corresponds to the JSON property `publishedAt`
        # @return [DateTime]
        attr_accessor :published_at
      
        # Internal representation of thumbnails for a YouTube resource.
        # Corresponds to the JSON property `thumbnails`
        # @return [Google::Apis::YoutubeV3::ThumbnailDetails]
        attr_accessor :thumbnails
      
        # The title of the search result.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @channel_title = args[:channel_title] if args.key?(:channel_title)
          @description = args[:description] if args.key?(:description)
          @live_broadcast_content = args[:live_broadcast_content] if args.key?(:live_broadcast_content)
          @published_at = args[:published_at] if args.key?(:published_at)
          @thumbnails = args[:thumbnails] if args.key?(:thumbnails)
          @title = args[:title] if args.key?(:title)
        end
      end

      end
  end
end

https://github.com/googleapis/google-api-ruby-client/blob/master/generated/google/apis/youtube_v3/service.rb


require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module YoutubeV3
 # Returns a collection of search results that match the query parameters
        # specified in the API request. By default, a search result set identifies
        # matching video, channel, and playlist resources, but you can also configure
        # queries to only retrieve a specific type of resource.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more search
        #   resource properties that the API response will include. Set the parameter
        #   value to snippet.
        # @param [String] channel_id
        #   The channelId parameter indicates that the API response should only contain
        #   resources created by the channel
        # @param [String] channel_type
        #   The channelType parameter lets you restrict a search to a particular type of
        #   channel.
        # @param [String] event_type
        #   The eventType parameter restricts a search to broadcast events. If you specify
        #   a value for this parameter, you must also set the type parameter's value to
        #   video.
        # @param [Boolean] for_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The forContentOwner parameter restricts the search to only retrieve resources
        #   owned by the content owner specified by the onBehalfOfContentOwner parameter.
        #   The user must be authenticated using a CMS account linked to the specified
        #   content owner and onBehalfOfContentOwner must be provided.
        # @param [Boolean] for_developer
        #   The forDeveloper parameter restricts the search to only retrieve videos
        #   uploaded via the developer's application or website. The API server uses the
        #   request's authorization credentials to identify the developer. Therefore, a
        #   developer can restrict results to videos uploaded through the developer's own
        #   app or website but not to videos uploaded through other apps or sites.
        # @param [Boolean] for_mine
        #   The forMine parameter restricts the search to only retrieve videos owned by
        #   the authenticated user. If you set this parameter to true, then the type
        #   parameter's value must also be set to video.
        # @param [String] location
        #   The location parameter, in conjunction with the locationRadius parameter,
        #   defines a circular geographic area and also restricts a search to videos that
        #   specify, in their metadata, a geographic location that falls within that area.
        #   The parameter value is a string that specifies latitude/longitude coordinates
        #   e.g. (37.42307,-122.08427).
        #   - The location parameter value identifies the point at the center of the area.
        #   - The locationRadius parameter specifies the maximum distance that the
        #   location associated with a video can be from that point for the video to still
        #   be included in the search results.The API returns an error if your request
        #   specifies a value for the location parameter but does not also specify a value
        #   for the locationRadius parameter.
        # @param [String] location_radius
        #   The locationRadius parameter, in conjunction with the location parameter,
        #   defines a circular geographic area.
        #   The parameter value must be a floating point number followed by a measurement
        #   unit. Valid measurement units are m, km, ft, and mi. For example, valid
        #   parameter values include 1500m, 5km, 10000ft, and 0.75mi. The API does not
        #   support locationRadius parameter values larger than 1000 kilometers.
        #   Note: See the definition of the location parameter for more information.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] order
        #   The order parameter specifies the method that will be used to order resources
        #   in the API response.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [DateTime] published_after
        #   The publishedAfter parameter indicates that the API response should only
        #   contain resources created after the specified time. The value is an RFC 3339
        #   formatted date-time value (1970-01-01T00:00:00Z).
        # @param [DateTime] published_before
        #   The publishedBefore parameter indicates that the API response should only
        #   contain resources created before the specified time. The value is an RFC 3339
        #   formatted date-time value (1970-01-01T00:00:00Z).
        # @param [String] q
        #   The q parameter specifies the query term to search for.
        #   Your request can also use the Boolean NOT (-) and OR (|) operators to exclude
        #   videos or to find videos that are associated with one of several search terms.
        #   For example, to search for videos matching either "boating" or "sailing", set
        #   the q parameter value to boating|sailing. Similarly, to search for videos
        #   matching either "boating" or "sailing" but not "fishing", set the q parameter
        #   value to boating|sailing -fishing. Note that the pipe character must be URL-
        #   escaped when it is sent in your API request. The URL-escaped value for the
        #   pipe character is %7C.
        # @param [String] region_code
        #   The regionCode parameter instructs the API to return search results for the
        #   specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
        # @param [String] related_to_video_id
        #   The relatedToVideoId parameter retrieves a list of videos that are related to
        #   the video that the parameter value identifies. The parameter value must be set
        #   to a YouTube video ID and, if you are using this parameter, the type parameter
        #   must be set to video.
        # @param [String] relevance_language
        #   The relevanceLanguage parameter instructs the API to return search results
        #   that are most relevant to the specified language. The parameter value is
        #   typically an ISO 639-1 two-letter language code. However, you should use the
        #   values zh-Hans for simplified Chinese and zh-Hant for traditional Chinese.
        #   Please note that results in other languages will still be returned if they are
        #   highly relevant to the search query term.
        # @param [String] safe_search
        #   The safeSearch parameter indicates whether the search results should include
        #   restricted content as well as standard content.
        # @param [String] topic_id
        #   The topicId parameter indicates that the API response should only contain
        #   resources associated with the specified topic. The value identifies a Freebase
        #   topic ID.
        # @param [String] type
        #   The type parameter restricts a search query to only retrieve a particular type
        #   of resource. The value is a comma-separated list of resource types.
        # @param [String] video_caption
        #   The videoCaption parameter indicates whether the API should filter video
        #   search results based on whether they have captions. If you specify a value for
        #   this parameter, you must also set the type parameter's value to video.
        # @param [String] video_category_id
        #   The videoCategoryId parameter filters video search results based on their
        #   category. If you specify a value for this parameter, you must also set the
        #   type parameter's value to video.
        # @param [String] video_definition
        #   The videoDefinition parameter lets you restrict a search to only include
        #   either high definition (HD) or standard definition (SD) videos. HD videos are
        #   available for playback in at least 720p, though higher resolutions, like 1080p,
        #   might also be available. If you specify a value for this parameter, you must
        #   also set the type parameter's value to video.
        # @param [String] video_dimension
        #   The videoDimension parameter lets you restrict a search to only retrieve 2D or
        #   3D videos. If you specify a value for this parameter, you must also set the
        #   type parameter's value to video.
        # @param [String] video_duration
        #   The videoDuration parameter filters video search results based on their
        #   duration. If you specify a value for this parameter, you must also set the
        #   type parameter's value to video.
        # @param [String] video_embeddable
        #   The videoEmbeddable parameter lets you to restrict a search to only videos
        #   that can be embedded into a webpage. If you specify a value for this parameter,
        #   you must also set the type parameter's value to video.
        # @param [String] video_license
        #   The videoLicense parameter filters search results to only include videos with
        #   a particular license. YouTube lets video uploaders choose to attach either the
        #   Creative Commons license or the standard YouTube license to each of their
        #   videos. If you specify a value for this parameter, you must also set the type
        #   parameter's value to video.
        # @param [String] video_syndicated
        #   The videoSyndicated parameter lets you to restrict a search to only videos
        #   that can be played outside youtube.com. If you specify a value for this
        #   parameter, you must also set the type parameter's value to video.
        # @param [String] video_type
        #   The videoType parameter lets you restrict a search to a particular type of
        #   videos. If you specify a value for this parameter, you must also set the type
        #   parameter's value to video.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::SearchListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::SearchListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_searches(part, channel_id: nil, channel_type: nil, event_type: nil, for_content_owner: nil, for_developer: nil, for_mine: nil, location: nil, location_radius: nil, max_results: nil, on_behalf_of_content_owner: nil, order: nil, page_token: nil, published_after: nil, published_before: nil, q: nil, region_code: nil, related_to_video_id: nil, relevance_language: nil, safe_search: nil, topic_id: nil, type: nil, video_caption: nil, video_category_id: nil, video_definition: nil, video_dimension: nil, video_duration: nil, video_embeddable: nil, video_license: nil, video_syndicated: nil, video_type: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'search', options)
          command.response_representation = Google::Apis::YoutubeV3::SearchListsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::SearchListsResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['channelType'] = channel_type unless channel_type.nil?
          command.query['eventType'] = event_type unless event_type.nil?
          command.query['forContentOwner'] = for_content_owner unless for_content_owner.nil?
          command.query['forDeveloper'] = for_developer unless for_developer.nil?
          command.query['forMine'] = for_mine unless for_mine.nil?
          command.query['location'] = location unless location.nil?
          command.query['locationRadius'] = location_radius unless location_radius.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['order'] = order unless order.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['publishedAfter'] = published_after unless published_after.nil?
          command.query['publishedBefore'] = published_before unless published_before.nil?
          command.query['q'] = q unless q.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['relatedToVideoId'] = related_to_video_id unless related_to_video_id.nil?
          command.query['relevanceLanguage'] = relevance_language unless relevance_language.nil?
          command.query['safeSearch'] = safe_search unless safe_search.nil?
          command.query['topicId'] = topic_id unless topic_id.nil?
          command.query['type'] = type unless type.nil?
          command.query['videoCaption'] = video_caption unless video_caption.nil?
          command.query['videoCategoryId'] = video_category_id unless video_category_id.nil?
          command.query['videoDefinition'] = video_definition unless video_definition.nil?
          command.query['videoDimension'] = video_dimension unless video_dimension.nil?
          command.query['videoDuration'] = video_duration unless video_duration.nil?
          command.query['videoEmbeddable'] = video_embeddable unless video_embeddable.nil?
          command.query['videoLicense'] = video_license unless video_license.nil?
          command.query['videoSyndicated'] = video_syndicated unless video_syndicated.nil?
          command.query['videoType'] = video_type unless video_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

  # Returns a list of videos that match the API request parameters.
        # @param [String] part
        #   The part parameter specifies a comma-separated list of one or more video
        #   resource properties that the API response will include.
        #   If the parameter identifies a property that contains child properties, the
        #   child properties will be included in the response. For example, in a video
        #   resource, the snippet property contains the channelId, title, description,
        #   tags, and categoryId properties. As such, if you set part=snippet, the API
        #   response will contain all of those properties.
        # @param [String] chart
        #   The chart parameter identifies the chart that you want to retrieve.
        # @param [String] hl
        #   The hl parameter instructs the API to retrieve localized resource metadata for
        #   a specific application language that the YouTube website supports. The
        #   parameter value must be a language code included in the list returned by the
        #   i18nLanguages.list method.
        #   If localized resource details are available in that language, the resource's
        #   snippet.localized object will contain the localized values. However, if
        #   localized details are not available, the snippet.localized object will contain
        #   resource details in the resource's default language.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of the YouTube video ID(s)
        #   for the resource(s) that are being retrieved. In a video resource, the id
        #   property specifies the video's ID.
        # @param [String] locale
        #   DEPRECATED
        # @param [Fixnum] max_height
        #   The maxHeight parameter specifies a maximum height of the embedded player. If
        #   maxWidth is provided, maxHeight may not be reached in order to not violate the
        #   width request.
        # @param [Fixnum] max_results
        #   The maxResults parameter specifies the maximum number of items that should be
        #   returned in the result set.
        #   Note: This parameter is supported for use in conjunction with the myRating and
        #   chart parameters, but it is not supported for use in conjunction with the id
        #   parameter.
        # @param [Fixnum] max_width
        #   The maxWidth parameter specifies a maximum width of the embedded player. If
        #   maxHeight is provided, maxWidth may not be reached in order to not violate the
        #   height request.
        # @param [String] my_rating
        #   Set this parameter's value to like or dislike to instruct the API to only
        #   return videos liked or disliked by the authenticated user.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        #   Note: This parameter is supported for use in conjunction with the myRating and
        #   chart parameters, but it is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] region_code
        #   The regionCode parameter instructs the API to select a video chart available
        #   in the specified region. This parameter can only be used in conjunction with
        #   the chart parameter. The parameter value is an ISO 3166-1 alpha-2 country code.
        # @param [String] video_category_id
        #   The videoCategoryId parameter identifies the video category for which the
        #   chart should be retrieved. This parameter can only be used in conjunction with
        #   the chart parameter. By default, charts are not restricted to a particular
        #   category.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListVideosResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListVideosResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_videos(part, chart: nil, hl: nil, id: nil, locale: nil, max_height: nil, max_results: nil, max_width: nil, my_rating: nil, on_behalf_of_content_owner: nil, page_token: nil, region_code: nil, video_category_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'videos', options)
          command.response_representation = Google::Apis::YoutubeV3::ListVideosResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListVideosResponse
          command.query['chart'] = chart unless chart.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['maxHeight'] = max_height unless max_height.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['maxWidth'] = max_width unless max_width.nil?
          command.query['myRating'] = my_rating unless my_rating.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['videoCategoryId'] = video_category_id unless video_category_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end