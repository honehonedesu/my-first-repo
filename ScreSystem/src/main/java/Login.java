import java.util.Scanner;

public class Login {

    public void login() {

        Scanner scanner = new Scanner(System.in);

        System.out.print("ユーザー名：");
        String user = scanner.nextLine();

        System.out.print("パスワード：");
        String pass = scanner.nextLine();

        if (user.equals("admin") && pass.equals("1234")) {
            System.out.println("ログイン成功！");
            
            Menu menu = new Menu();
            menu.showMenu();
            
        } else {
            System.out.println("ログイン失敗");
        }
    }
}