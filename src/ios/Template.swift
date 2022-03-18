import Foundation;


class Template:TemplatePlugin {

    @objc(coolAlert:)
    func coolAlert(command:CDVInvokedUrlCommand){
        let message=command.arguments[0] as? String;
        success(command,message);
    }

}