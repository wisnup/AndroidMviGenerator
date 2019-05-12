package ${packageName}.${feature?lower_case};

import androidx.lifecycle.ViewModel
import ${mviInterface}.MviViewModel
import io.reactivex.Observable
import io.reactivex.subjects.PublishSubject

class ${feature}ViewModel : 
    ViewModel(), 
    MviViewModel<${feature}Intent, ${feature}ViewState> {

    private val intentSubject = PublishSubject.create<${feature}Intent>()
    private val processor =
        ${feature}ActionProcessor()
    private val stateObservable: Observable<${feature}ViewState> = compose()

    private fun compose(): Observable<${feature}ViewState> {
        return intentSubject
            .map(this::actionFromIntent)
            .compose(processor.actionProcessor)
            .scan(${feature}ViewState.idle(), this::reduce)
            .distinctUntilChanged()
            .replay(1)
            .autoConnect(0)
    }

    override fun processIntents(intents: Observable<${feature}Intent>) {
        intents.subscribe(intentSubject)
    }

    override fun getStates(): Observable<${feature}ViewState> {
        return stateObservable.serialize()
    }

    private fun actionFromIntent(intent: ${feature}Intent): ${feature}Action {
        return when (intent) {
            // TODO map action from intent
            is ${feature}Intent.Load${feature}Intent -> ${feature}Action.Load${feature}Action
        }
    }

    private fun reduce(
        previousState: ${feature}ViewState,
        result: ${feature}Result
    ): ${feature}ViewState {
        // TODO handle based on result
        return when(result) {
            is ${feature}Result ->
                when (result) {
                    is ${feature}Result.Load${feature}Result -> previousState
                }
        }
    }
}
