

class CordovaPlugin:CDVPlugin {

    //Object callback
    func success(_ command:CDVInvokedUrlCommand,_ message:[AnyHashable:Any]?,_ keep:NSNumber=false){
        if(message==nil){
            success(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_OK,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }
    func error(_ command:CDVInvokedUrlCommand,_ message:[AnyHashable:Any]?,_ keep:NSNumber=false){
        if(message==nil){
            error(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_ERROR,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }

    //Array callback
    func success(_ command:CDVInvokedUrlCommand,_ message:[Any]?,_ keep:NSNumber=false){
        if(message==nil){
            success(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_OK,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }
    func error(_ command:CDVInvokedUrlCommand,_ message:[Any]?,_ keep:NSNumber=false){
        if(message==nil){
            error(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_ERROR,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }

    //Boolean callback
    func success(_ command:CDVInvokedUrlCommand,_ message:Bool?,_ keep:NSNumber=false){
        let result=CDVPluginResult(status:CDVCommandStatus_OK,messageAs:message==nil ?false:message!);
        if(!(result==nil)){
            result!.keepCallback=keep;   
        }
        self.commandDelegate.send(result,callbackId:command.callbackId);
    }
    func error(_ command:CDVInvokedUrlCommand,_ message:Bool?,_ keep:NSNumber=false){
        let result=CDVPluginResult(status:CDVCommandStatus_ERROR,messageAs:message==nil ?false:message!);
        if(!(result==nil)){
            result!.keepCallback=keep;   
        }
        self.commandDelegate.send(result,callbackId:command.callbackId);
    }

    //Number callback
    func success(_ command:CDVInvokedUrlCommand,_ message:Double?,_ keep:NSNumber=false){
        if(message==nil){
            success(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_OK,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }
    func error(_ command:CDVInvokedUrlCommand,_ message:Double?,_ keep:NSNumber=false){
        if(message==nil){
            error(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_ERROR,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }
    func success(_ command:CDVInvokedUrlCommand,_ message:Int?,_ keep:NSNumber=false){
        if(message==nil){
            success(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_OK,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }
    func error(_ command:CDVInvokedUrlCommand,_ message:Int?,_ keep:NSNumber=false){
        if(message==nil){
            error(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_ERROR,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }

    //String callback
    func success(_ command:CDVInvokedUrlCommand,_ message:String?,_ keep:NSNumber=false){
        if(message==nil){
            success(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_OK,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }
    func error(_ command:CDVInvokedUrlCommand,_ message:String?,_ keep:NSNumber=false){
        if(message==nil){
            error(command,false,keep);
        }
        else{
            let result=CDVPluginResult(status:CDVCommandStatus_ERROR,messageAs:message!);
            if(!(result==nil)){
                result!.keepCallback=keep;   
            }
            self.commandDelegate.send(result,callbackId:command.callbackId);
        }
    }

    class Error:LocalizedError {
        private var message:String="";
        init(_ message:String){
            self.message=message;
        }
        public var errorDescription:String?{
            return self.message; 
        }
    }
}

func getUIColorFromHex(_ code:String)->UIColor{
    var color=UIColor.white;
    if(code.starts(with:"#")&&(code.count>6)){
        let hex=code[code.index(after:code.startIndex)..<code.index(code.startIndex,offsetBy:7)];
        var parts:[Int16]=[];
        for i in 0..<3 {
            let start=hex.index(hex.startIndex,offsetBy:i*2);
            let pair=String(hex[start...hex.index(start,offsetBy:1)]);
            let decimal=Int16(pair,radix:16)!;
            parts.append(decimal);
        }
        color=UIColor(
            red:CGFloat(parts[0])/255,
            green:CGFloat(parts[1])/255,
            blue:CGFloat(parts[2])/255,
            alpha:1
        );
    }
    else{
        color=({switch(code){
            case "transparent": return UIColor.clear;
            case "black": return UIColor.black;
            case "blue": return UIColor.blue;
            case "brown": return UIColor.brown;
            case "cyan": return UIColor.cyan;
            case "darkgray": return UIColor.darkGray;
            case "gray": return UIColor.gray;
            case "green": return UIColor.green;
            case "lightgray": return UIColor.lightGray;
            case "magenta": return UIColor.magenta;
            case "orange": return UIColor.orange;
            case "purple": return UIColor.purple;
            case "red": return UIColor.red;
            case "yellow": return UIColor.yellow;
            default: return UIColor.white; 
        }})();
    }
    return color;
}
