# frozen_string_literal: true

module AccountsHelper
  def pull_liked_video_info(body_id, videoId)
    if Rails.env.test?
      mock_video_array
    else
      liked_video_array(body_id, videoId)
    end
end

  private

  def liked_video_array(body_id, videoId)
    video_array = []
    video_array << pull_liked_workout(body_id, videoId)
    video_array
  end

  def pull_liked_workout(_body_id, _videoId)
    workout = Workout.where(bodyId: _body_id, videoId: _videoId)
    liked_workout = {
      'bodyId' => workout[0].bodyId,
      'videoId' => workout[0].videoId,
      'title' => workout[0].title,
      'description' => workout[0].description,
      'channel' => workout[0].channel,
      'nextPageToken' => workout[0].nextPageToken,
      'prevPageToken' => workout[0].prevPageToken
    }
  end

  def mock_video_array
    video_array = [{
      'bodyId' => 'arms',
      'videoId' => '12345',
      'title' => 'mock video',
      'description' => 'test',
      'channel' => 'mock channel'
    }]
  end
end
