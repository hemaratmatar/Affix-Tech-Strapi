import api from "../utils/api";
import { reviews_loaded, reviews_load_erroe } from "./types";

export const reviewLoaded = () => async (dispatch) => {
  try {
    const res = await api.get("/");
    dispatch({
      type: reviews_loaded,
      payload: res.data,
    });
  } catch (err) {
    dispatch({
      type: reviews_load_erroe,
      payload: { msg: err.response.statusText, status: err.response.status },
    });
  }
};
