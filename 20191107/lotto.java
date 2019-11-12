package bean.user;

public class lotto {
	public static void main(String[] args) {
		int[] num = new int[7];
		for (int i = 0; i < num.length; i++) {
			num[i] = (int)(Math.random() * 45 + 1);
			for (int j = 0; j < i; j++) {
				if (num[j] == num[i]) {
					i--;
					break;
				}
			}
		}
		for (int i = 0; i < num.length-1; i++) {
			System.out.println(num[i] + " ");
		}
	}
}