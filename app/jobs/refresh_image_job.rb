require 'open-uri'

class RefreshImageJob
    include Sidekiq::Job

    def perform(id)
        picture = Picture.find id
        download_url = JSON.parse(URI.open('https://coffee.alexflipnote.dev/random.json').read)['file']
        picture.update(download_url: download_url)
        Turbo::StreamsChannel.broadcast_replace_to(
            "coffee_shop",
            target:"picture_#{picture.id}",
            partial: 'pictures/card', locals: { picture: picture }
        )
    end
end