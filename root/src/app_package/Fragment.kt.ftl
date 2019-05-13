package ${packageName}.${feature?lower_case};

import android.os.Bundle
import android.util.Log
import android.view.View
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.ViewModelProviders
import com.quipper.school.assignment.QLearnApp
import com.quipper.school.assignment.viewmodel.MviView
import com.uber.autodispose.android.lifecycle.AndroidLifecycleScopeProvider
import com.uber.autodispose.autoDisposable
import io.reactivex.Observable
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.schedulers.Schedulers
import io.reactivex.subjects.PublishSubject
import javax.inject.Inject

class ${feature}Fragment : 
    Fragment(), 
    MviView<${feature}Intent, ${feature}ViewState> {
    
    companion object {

        fun createInstance(): ${feature}Fragment {
            return ${feature}Fragment()
        }
    }

    @Inject
    lateinit var factory: ViewModelProvider.Factory

    private val scopeProvider = AndroidLifecycleScopeProvider.from(this)

    private lateinit var viewModel: ${feature}ViewModel

    private val ${feature?uncap_first}IntentSubject = PublishSubject.create<${feature}Intent>()

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
    
        // TODO make this fragment injectable
        // (this.activity?.application as QLearnApp).loginUserComponent.inject(this)

        viewModel = ViewModelProviders
            .of(this, factory)
            .get(${feature}ViewModel::class.java)
        viewModel.processIntents(intents())
    }
    
    override fun onStart() {
        super.onStart()

        viewModel.getStates()
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .autoDisposable(scopeProvider)
            .subscribe(
                {state -> render(state)},
                {error -> Log.e(tag, "error render", error)}
            )
    }

    override fun intents(): Observable<${feature}Intent> {
        return ${feature?uncap_first}IntentSubject.serialize()
    }

    override fun render(state: ${feature}ViewState) {
        // TODO render the view state
    }
}
