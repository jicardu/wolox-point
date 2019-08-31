class Notify
    include Interactor

    def call
      firebase_url    = 'https://wolox-point.firebaseio.com'
      firebase_secret = 'Ef59XcxOAuCDUiKCMjhjn9J1vpnoOsRt0FdI7m2J'
      firebase = Firebase::Client.new(firebase_url, firebase_secret)
      firebase.push("todos", { :name => 'Pick the milk',        :priority => 1 })
    end
  end
