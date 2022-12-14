import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../view-model/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
          buildScaffold(context, viewModel),
    );
  }

  Widget buildScaffold(BuildContext context, LoginViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sa login"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.testConn();
        },
      ),
    );
  }
}
