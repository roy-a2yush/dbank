import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'addFund' : (arg_0: number) => Promise<undefined>,
  'checkBalance' : () => Promise<number>,
  'computeInterest' : () => Promise<undefined>,
  'getId' : () => Promise<bigint>,
  'withdrawFund' : (arg_0: number) => Promise<undefined>,
}
