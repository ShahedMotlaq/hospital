abstract class DeathFilestate {}

class DeathFileInitialState extends DeathFilestate {}

class DeathFileLoadingState extends DeathFilestate {}

class DeathFileSuccessState extends DeathFilestate {}

class DeathFileErrorState extends DeathFilestate {
  final String error;
  DeathFileErrorState(this.error);
}
