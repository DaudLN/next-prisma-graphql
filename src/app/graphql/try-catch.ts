import CustomGraphQLError from "./Errorhandler";

const tryCatch = async <T>(
  fn: () => Promise<T>,
  errorMessage: string,
  errorCode: number
): Promise<T> => {
  try {
    const result = await fn();
    console.log(result);
    return result;
  } catch (error) {
    throw new CustomGraphQLError(errorMessage, errorCode);
  }
};

export default tryCatch;
