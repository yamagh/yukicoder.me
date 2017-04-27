import java.util.Scanner;

class no924 {
    public static void main(String args[]) {
        int[] eto = new int[12];
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int max=0;
        for(int j=0;j<N;j++){
            String A = sc.next();
            switch (A) {
                case "ne":      eto[0]++;break;
                case "ushi":    eto[1]++;break;
                case "tora":    eto[2]++;break;
                case "u":       eto[3]++;break;
                case "tatsu":   eto[4]++;break;
                case "mi":      eto[5]++;break;
                case "uma":     eto[6]++;break;
                case "hitsuji": eto[7]++;break;
                case "saru":    eto[8]++;break;
                case "tori":    eto[9]++;break;
                case "inu":     eto[10]++;break;
                case "i":       eto[11]++;break;
            }
        }
        for(int j=0;j<eto.length;j++){
            max=Math.max(max,eto[j]); 
        }
        if(N%2==0&&max<=N/2){
            System.out.println("YES");
        }else if(N%2!=0&&max<=N/2+1){
            System.out.println("YES");
        }else{
            System.out.println("NO");
        }
    }
}
