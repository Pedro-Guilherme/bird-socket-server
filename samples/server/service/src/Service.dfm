object BirdSocketService: TBirdSocketService
  OnCreate = ServiceCreate
  OnDestroy = ServiceDestroy
  DisplayName = 'Bird Socket Service Sample'
  OnContinue = ServiceContinue
  OnExecute = ServiceExecute
  OnPause = ServicePause
  OnShutdown = ServiceShutdown
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 150
  Width = 215
end
