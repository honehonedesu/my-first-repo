import java.util.Scanner;

public class Menu {

    public void showMenu() {

        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("\n=== メニュー ===");
            System.out.println("1. 売上管理");
            System.out.println("2. 商品管理");
            System.out.println("3. 在庫管理");
            System.out.println("4. 発注管理");
            System.out.println("0. 終了");
            System.out.print("選択してください：");

            int choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    System.out.println("売上管理を開きます");
                    break;
                case 2:
                    System.out.println("商品管理を開きます");
                    break;
                case 3:
                    System.out.println("在庫管理を開きます");
                    break;
                case 4:
                    System.out.println("発注管理を開きます");
                    break;
                case 0:
                    System.out.println("終了します");
                    return;
                default:
                    System.out.println("もう一度入力してください");
            }
        }
    }
}