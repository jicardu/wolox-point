module Event
  class Create
    include Interactor

    delegate :event, :context

    def call
      Firebase::Notify.call
    end
  end
end

