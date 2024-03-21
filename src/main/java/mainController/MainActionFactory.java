package mainController;

import action.LectureDetail;
import action.MainAction;

public class MainActionFactory {

	private static MainActionFactory instance = new MainActionFactory();

	private MainActionFactory() {
		super();
	}

	public static MainActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("Action 입력받음");

		if (command.equals("main")) {
			action = new MainAction();
		} 
		else if (command.equals("lectureDetail")) {
			action = new LectureDetail();
		}

		System.out.println(action);
		return action;
	}
}
