
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/ws/websocket")
public class WsServer {

    @OnOpen
    public void onOpen() {
        System.out.println("Open Connection ...");
    }

    @OnClose
    public void onClose() {
        System.out.println("Close Connection ...");
    }

    @OnMessage
    public void onMessage(Session session, String message) {
        try {
            //        System.out.println("Message from the client: " + message);
//        String echoMsg = "Guru says : " + message;
//        return echoMsg;

            session.getBasicRemote().sendText("" + message);
        } catch (IOException ex) {
            Logger.getLogger(WsServer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @OnError
    public void onError(Throwable e) {
        e.printStackTrace();
    }

}
