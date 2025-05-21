import 'package:currency_textfield/currency_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/ui/home/available_balance/controllers/available_balance_controller.dart';
import 'package:flutter_finance_portfolio/ui/shared/widgets/btn.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class DepositForm extends ConsumerWidget {
  DepositForm({super.key});
  final _formKey = GlobalKey<FormState>();
  final _amountController = CurrencyTextFieldController(
    currencySymbol: "€",
    decimalSymbol: ",",
    thousandSymbol: ".",
  );

  _onSubmitPressed(
    BuildContext context,
    AvailableBalanceController availableBalanceController,
  ) {
    if (_formKey.currentState!.validate()) {
      availableBalanceController.add(_amountController.doubleValue);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AvailableBalanceController availableBalanceController = ref.read(
      availableBalanceControllerProvider.notifier,
    );
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 30,
        left: 20,
        right: 20,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Deposit Funds',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an amount';
                }
                if (_amountController.doubleValue <= 0) {
                  return 'Enter a positive number';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            Btn(
              label: 'Submit',
              onPressed: () {
                _onSubmitPressed(context, availableBalanceController);
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
