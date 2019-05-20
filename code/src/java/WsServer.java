
import com.madhurisadgir.bean.UserSendChat;
import com.madhurisadgir.dao.ChatDao;
import com.madhurisadgir.dao.LoginDao;
import com.madhurisadgir.util.CommonUtil;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import org.codehaus.jackson.map.ObjectMapper;

@ServerEndpoint("/ws/websocket")
public class WsServer {

    ChatDao chatDao = new ChatDao();
    LoginDao loginDao = new LoginDao();

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

            ObjectMapper objectMapper = new ObjectMapper();
            UserSendChat usc = objectMapper.readValue(message, UserSendChat.class);

            if (usc.getContent().equals("Connected")) {
                CommonUtil.userSession.put(usc.getUid(), session);
            } else {

                if (loginDao.isUserLoggedIn(usc.getToUid())) {
                    String text = objectMapper.writeValueAsString(usc);
                    CommonUtil.userSession.get(usc.getToUid()).getBasicRemote().sendText(text);
                }
                chatDao.sendMessage(usc.getChatRoomId(), usc.getUid(), usc.getContent());
            }
        } catch (IOException ex) {
            Logger.getLogger(WsServer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @OnError
    public void onError(Throwable e) {
        e.printStackTrace();
    }

}
